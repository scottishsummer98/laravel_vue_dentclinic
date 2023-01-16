<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Contact;
use App\Models\More;
use App\Models\Service;
use App\Models\Slider;
use App\Models\Team;
use App\Models\Treatment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DataProviderController extends Controller
{
    public function saveSliderImage(Request $request)
    {
        $sliderPicture = null;
        if ($request->SliderPicture) {
            $sliderPicture = $request->SliderPicture->store(
                '/sliders/' . date('Y') . '/' . date('m')
            );
        }
        Slider::create([
            'sliderPicture' => $sliderPicture,
        ]);
    }
    public function updateSliderImage(Request $request)
    {
        $sliderimageid = Slider::where('id', $request->id)->first();
        $newSliderImage = null;
        if ($request->SliderPictureEdit) {
            Storage::delete($sliderimageid->sliderPicture);
            $newSliderImage = $request->SliderPictureEdit->store(
                '/sliders/' . date('Y') . '/' . date('m')
            );
            Slider::where('id', $sliderimageid->id)->update([
                'sliderPicture' => $newSliderImage,
            ]);
        }
    }
    public function deleteSliderImage(Request $request)
    {
        $sliderimageid = Slider::where('id', $request->id)->first();
        Storage::delete($sliderimageid->sliderPicture);
        Slider::destroy('id', $sliderimageid->id);
    }
    public function showSliderImages(Request $request)
    {
        return Slider::get();
    }

    public function saveTeam(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'desig' => 'required',
            'bio' => 'required',
            'fblink' => 'required',
            'twitterlink' => 'required',
            'linkedinlink' => 'required',
            'gmaillink' => 'required',
        ]);

        $profilePicture = null;
        if ($request->ProfilePicture) {
            $profilePicture = $request->ProfilePicture->store(
                '/team/' . date('Y') . '/' . date('m')
            );
        }
        Team::create([
            'name' => $request->name,
            'desig' => $request->desig,
            'bio' => $request->bio,
            'profilePicture' => $profilePicture,
            'fblink' => $request->fblink,
            'twitterlink' => $request->twitterlink,
            'linkedinlink' => $request->linkedinlink,
            'gmaillink' => $request->gmaillink,
        ]);
    }
    public function updateTeam(Request $request)
    {
        $teamid = Team::where('id', $request->id)->first();
        $profilePicture = null;
        if ($request->ProfilePicture) {
            Storage::delete($teamid->profilePicture);
            $profilePicture = $request->ProfilePicture->store(
                '/team/' . date('Y') . '/' . date('m')
            );
            Team::where('id', $teamid->id)->update([
                'name' => $request->name,
                'desig' => $request->desig,
                'bio' => $request->bio,
                'profilePicture' => $profilePicture,
                'fblink' => $request->fblink,
                'twitterlink' => $request->twitterlink,
                'linkedinlink' => $request->linkedinlink,
                'gmaillink' => $request->gmaillink,
            ]);
        } else {
            Team::where('id', $teamid->id)->update([
                'name' => $request->name,
                'desig' => $request->desig,
                'bio' => $request->bio,
                'fblink' => $request->fblink,
                'twitterlink' => $request->twitterlink,
                'linkedinlink' => $request->linkedinlink,
                'gmaillink' => $request->gmaillink,
            ]);
        }
    }
    public function deleteTeam(Request $request)
    {
        $teamid = Team::where('id', $request->id)->first();
        Storage::delete($teamid->profilePicture);
        Team::destroy('id', $teamid->id);
    }
    public function showTeams(Request $request)
    {
        return Team::get();
    }

    public function saveService(Request $request)
    {
        $request->validate([
            'type' => 'required',
            'price' => 'required',
        ]);

        Service::create([
            'type' => $request->type,
            'price' => $request->price,
        ]);
    }
    public function updateServices(Request $request, Service $id)
    {
        $id->update($request->all());
    }
    public function deleteService(Request $request)
    {
        $serviceid = Service::where('id', $request->id)->first();
        Service::destroy('id', $serviceid->id);
    }
    public function showServices(Request $request)
    {
        return Service::get();
    }

    public function saveTreatment(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $beforeOperationImage = null;
        if ($request->BeforeOperationImage) {
            $beforeOperationImage = $request->BeforeOperationImage->store(
                '/treatment/beforeop/' . date('Y') . '/' . date('m')
            );
        }

        $afterOperationImage = null;
        if ($request->AfterOperationImage) {
            $afterOperationImage = $request->AfterOperationImage->store(
                '/treatment/afterop/' . date('Y') . '/' . date('m')
            );
        }

        Treatment::create([
            'name' => $request->name,
            'description' => $request->description,
            'beforeOperationImage' => $beforeOperationImage,
            'afterOperationImage' => $afterOperationImage,
        ]);
    }
    public function updateTreatment(Request $request)
    {
        $treatmentid = Treatment::where('id', $request->id)->first();
        $beforeOperationImage = null;
        $afterOperationImage = null;
        if ($request->BeforeOperationImage) {
            Storage::delete($treatmentid->beforeOperationImage);
            $beforeOperationImage = $request->BeforeOperationImage->store(
                '/treatment/beforeop/' . date('Y') . '/' . date('m')
            );
            Treatment::where('id', $treatmentid->id)->update([
                'name' => $request->name,
                'description' => $request->description,
                'beforeOperationImage' => $beforeOperationImage,
            ]);
        } elseif ($request->AfterOperationImage) {
            Storage::delete($treatmentid->afterOperationImage);
            $afterOperationImage = $request->AfterOperationImage->store(
                '/treatment/afterop/' . date('Y') . '/' . date('m')
            );
            Treatment::where('id', $treatmentid->id)->update([
                'name' => $request->name,
                'description' => $request->description,
                'afterOperationImage' => $afterOperationImage,
            ]);
        } else {
            Treatment::where('id', $treatmentid->id)->update([
                'name' => $request->name,
                'description' => $request->description,
            ]);
        }
    }
    public function deleteTreatment(Request $request)
    {
        $treatmentid = Treatment::where('id', $request->id)->first();
        Storage::delete($treatmentid->beforeOperationImage);
        Storage::delete($treatmentid->afterOperationImage);
        Treatment::destroy('id', $treatmentid->id);
    }
    public function showTreatments(Request $request)
    {
        return Treatment::get();
    }

    public function saveMoreDetail(Request $request)
    {
        $request->validate([
            'type' => 'required',
            'topic' => 'required',
        ]);

        More::create([
            'type' => $request->type,
            'topic' => $request->topic,
        ]);
    }
    public function updateMoreDetail(Request $request, More $id)
    {
        $id->update($request->all());

        return response(['message' => 'More Updated!']);
    }
    public function deleteMoreDetail(Request $request)
    {
        $moredetailid = More::where('id', $request->id)->first();
        More::destroy('id', $moredetailid->id);
    }
    public function showMoreDetails(Request $request)
    {
        if ($request->topictype) {
            if ($request->topictype == 'publications') {
                $more = More::where('type', 'Publications')->get();
            } elseif ($request->topictype == 'presentations') {
                $more = More::where('type', 'Presentations')->get();
            } elseif ($request->topictype == 'involvement') {
                $more = More::where('type', 'Involvement')->get();
            } elseif ($request->topictype == 'specialization') {
                $more = More::where('type', 'Specialization')->get();
            } elseif ($request->topictype == 'socialwork') {
                $more = More::where('type', 'Social Work')->get();
            }
        } else {
            $more = More::paginate(10);
        }
        return $more;
    }

    public function saveContact(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'location' => 'required',
            'mobile' => 'required',
            'email' => 'required',
            'visitingtime' => 'required',
        ]);

        Contact::create([
            'name' => $request->name,
            'location' => $request->location,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'visitingtime' => $request->visitingtime,
        ]);
    }
    public function updateContact(Request $request, Contact $id)
    {
        $id->update($request->all());

        return response(['message' => 'Contact Updated!']);
    }
    public function deleteContact(Request $request)
    {
        $contactid = Contact::where('id', $request->id)->first();
        Contact::destroy('id', $contactid->id);
    }
    public function showContacts(Request $request)
    {
        return Contact::get();
    }

    public function saveArticle(Request $request)
    {
        $request->validate([
            'author' => 'required',
            'title' => 'required',
            'description' => 'required',
        ]);

        $articleImage = null;
        if ($request->ArticleImage) {
            $articleImage = $request->ArticleImage->store(
                '/article/' . date('Y') . '/' . date('m')
            );
        }

        Article::create([
            'author' => $request->author,
            'title' => $request->title,
            'description' => $request->description,
            'articleImage' => $articleImage,
        ]);
    }
    public function updateArticle(Request $request)
    {
        $articleid = Article::where('id', $request->id)->first();
        $articleImage = null;
        if ($request->ArticleImage) {
            Storage::delete($articleid->articleImage);
            $articleImage = $request->ArticleImage->store(
                '/article/' . date('Y') . '/' . date('m')
            );
            Article::where('id', $articleid->id)->update([
                'author' => $request->author,
                'title' => $request->title,
                'description' => $request->description,
                'articleImage' => $articleImage,
            ]);
        } else {
            Article::where('id', $articleid->id)->update([
                'author' => $request->author,
                'title' => $request->title,
                'description' => $request->description,
            ]);
        }
    }
    public function deleteArticle(Request $request)
    {
        $articleid = Article::where('id', $request->id)->first();
        Storage::delete($articleid->articleImage);
        Article::destroy('id', $articleid->id);
    }
    public function showArticles(Request $request)
    {
        if ($request->type) {
            if ($request->type == 'frontendarticles') {
                if ($request->search) {
                    $articles = Article::where(
                        'title',
                        'like',
                        '%' . $request->search . '%'
                    )->paginate(5);
                } else {
                    $articles = Article::paginate(5);
                }
            } elseif ($request->type == 'backendarticles') {
                $articles = Article::paginate(10);
            } elseif ($request->type == 'frontendarticlessidebar') {
                $articles = Article::orderBy('updated_at', 'DESC')
                    ->limit(10)
                    ->get();
            } elseif ($request->type == 'frontendarticleslider') {
                $articles = Article::orderBy('title', 'ASC')
                    ->limit(15)
                    ->get();
            } elseif ($request->type == 'frontendsinglearticle') {
                $articles = Article::where('id', $request->id)->get();
            }
        }

        return $articles;
    }
}

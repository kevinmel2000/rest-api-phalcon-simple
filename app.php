<?php
/**
 * Local variables
 * @var \Phalcon\Mvc\Micro $app
 */

/**
 * Add your routes here
 */
$app->get('/', function () use ($app) {
    echo $app['view']->render('index');
});

/**
* Api GET All Content
*/
$app->get('/api/user', function() use ($app) {
    $robots = User::find();
    foreach ($robots as $robot) {
        $data[] = array(
            'id' => $robot->id,
            'username' => $robot->username,
        );
    }

    echo json_encode($data);
});
$app->get('/api/user/search/{name}', function($name) use ($app) {

    $robots = User::query()
            ->where("username LIKE '$name'")
            ->order("username")
            ->execute();

    $data = array();
    foreach ($robots as $robot) {
        $data[] = array(
            'id' => $robot->id,
            'username' => $robot->username,
        );
    }

    echo json_encode($data);

});
$app->get('/api/user/{id:[0-9]+}', function($id) use ($app) {

    $robot = User::findFirstByid($id);

    $response = new Phalcon\Http\Response();

    if ($robot == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
        $response->setJsonContent(array(
            'status' => 'FOUND',
            'data' => array(
                'id' => $robot->id,
                'username' => $robot->username
            )
        ));
    }

    return $response;

});
$app->get('/api/contentWeb', function() use ($app) {
    $robots = ContentWeb::find();
    foreach ($robots as $robot) {
        $data[] = array(
            'id' => $robot->id,
            'name_content' => $robot->name_content,
            'decription_content' => $robot->decription_content,
            'date_content' => $robot->date_content,
            'category_content' => $robot->category_content,
            'image_content' => $robot->image_content,
            'title_content' => $robot->title_content,
            'summary_content' => $robot->summary_content,
        );
    }
    $response = new Phalcon\Http\Response();
    $response->setJsonContent(array('status' => 'Success', 'messages' => $data));
    return $response;
});
$app->get('/api/contentWeb/search/{name}', function($name) use ($app) {

    $robots = ContentWeb::query()
            ->where("name_content LIKE '$name'")
            ->order("name_content")
            ->execute();
    $response = new Phalcon\Http\Response();
    if ($robots == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
      $data = array();
      foreach ($robots as $robot) {
          $data[] = array(
              'id' => $robot->id,
              'name_content' => $robot->name_content,
              'decription_content' => $robot->decription_content,
              'date_content' => $robot->date_content,
              'category_content' => $robot->category_content,
              'image_content' => $robot->image_content,
              'title_content' => $robot->title_content,
              'summary_content' => $robot->summary_content,
          );
      }
       $response->setJsonContent(array('status' => 'Found', 'messages' => $data));
    }
     return $response;

});
$app->get('/api/contentWeb/{id:[0-9]+}', function($id) use ($app) {

    $robot = ContentWeb::findFirstByid($id);

    $response = new Phalcon\Http\Response();

    if ($robot == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
        $response->setJsonContent(array(
            'status' => 'FOUND',
            'data' => array(
                'id' => $robot->id,
                'name_content' => $robot->name_content,
                'decription_content' => $robot->decription_content,
                'date_content' => $robot->date_content,
                'category_content' => $robot->category_content,
                'image_content' => $robot->image_content,
                'title_content' => $robot->title_content,
                'summary_content' => $robot->summary_content,
            )
        ));
    }

    return $response;

});
$app->get('/api/client', function() use ($app) {
    $robots = Client::find();
    foreach ($robots as $robot) {
        $data[] = array(
            'id_client' => $robot->id_client,
            'name_client' => $robot->name_client,
            'image_client' => $robot->image_client,
        );
    }

    $response = new Phalcon\Http\Response();
    $response->setJsonContent(array('status' => 'Success', 'messages' => $data));
    return $response;
});
$app->get('/api/client/search/{name}', function($name) use ($app) {

    $robots = Client::query()
            ->where("name_client LIKE '$name'")
            ->order("name_client")
            ->execute();
    $response = new Phalcon\Http\Response();
    if ($robots == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
      $data = array();
      foreach ($robots as $robot) {
          $data[] = array(
              'id_client' => $robot->id_client,
              'name_client' => $robot->name_client,
              'image_client' => $robot->image_client,
          );
      }
       $response->setJsonContent(array('status' => 'Found', 'messages' => $data));
    }
     return $response;

});
$app->get('/api/client/{id:[0-9]+}', function($id) use ($app) {

    $robot = Client::findFirstByid_client($id);

    $response = new Phalcon\Http\Response();

    if ($robot == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
        $response->setJsonContent(array(
            'status' => 'FOUND',
            'data' => array(
                'id_client' => $robot->id_client,
                'name_client' => $robot->name_client,
                'image_client' => $robot->image_client,
            )
        ));
    }

    return $response;

});
$app->get('/api/slider', function() use ($app) {
    $robots = Slider::find();
    foreach ($robots as $robot) {
        $data[] = array(
            'id_slider' => $robot->id_slider,
            'name_slider' => $robot->name_slider,
        );
    }

    $response = new Phalcon\Http\Response();
    $response->setJsonContent(array('status' => 'Success', 'messages' => $data));
    return $response;
});
$app->get('/api/career', function() use ($app) {
    $robots = Career::find();
    foreach ($robots as $robot) {
        $data[] = array(
            'id' => $robot->id,
            'tittle_career' => $robot->tittle_career,
            'descriptions_career' => $robot->descriptions_career,
            'responsibilities_career' => $robot->responsibilities_career,
            'qualifications_career' => $robot->qualifications_career,
            'date_post' => $robot->date_post,
            'close_date' => $robot->close_date,
            'location_career' => $robot->location_career,
            'image_career' => $robot->image_career,
        );
    }

    $response = new Phalcon\Http\Response();
    $response->setJsonContent(array('status' => 'Success', 'messages' => $data));
    return $response;
});
$app->get('/api/career/search/{name}', function($name) use ($app) {

    $robots = Career::query()
            ->where("tittle_career LIKE '$name'")
            ->order("tittle_career")
            ->execute();
    $response = new Phalcon\Http\Response();
    if ($robots == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
      $data = array();
      foreach ($robots as $robot) {
          $data[] = array(
              'id' => $robot->id,
              'tittle_career' => $robot->tittle_career,
              'descriptions_career' => $robot->descriptions_career,
              'responsibilities_career' => $robot->responsibilities_career,
              'qualifications_career' => $robot->qualifications_career,
              'date_post' => $robot->date_post,
              'close_date' => $robot->close_date,
              'location_career' => $robot->location_career,
              'image_career' => $robot->image_career,
          );
      }
       $response->setJsonContent(array('status' => 'Found', 'messages' => $data));
    }
     return $response;

});
$app->get('/api/career/{id:[0-9]+}', function($id) use ($app) {

    $robot = Career::findFirstByid($id);

    $response = new Phalcon\Http\Response();

    if ($robot == false) {
        $response->setJsonContent(array('status' => 'NOT-FOUND'));
    } else {
        $response->setJsonContent(array(
            'status' => 'FOUND',
            'data' => array(
                'id' => $robot->id,
                'tittle_career' => $robot->tittle_career,
                'descriptions_career' => $robot->descriptions_career,
                'responsibilities_career' => $robot->responsibilities_career,
                'qualifications_career' => $robot->qualifications_career,
                'date_post' => $robot->date_post,
                'close_date' => $robot->close_date,
                'location_career' => $robot->location_career,
                'image_career' => $robot->image_career,
            )
        ));
    }

    return $response;

});

/**
* Api POST All Content
*/

$app->post('/api/user', function() use ($app) {
    $robot = $app->request->getJsonRawBody();
    $user = new User();
    $user->username = $robot->username;
    $user->password = $this->security->hash($robot->password);



    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($user->save() == true) {

        //Change the HTTP status
        $response->setStatusCode(201, "Created");

        $robot->id = $user->id;

        $response->setJsonContent(array('status' => 'OK', 'data' => $robot));

    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        //Send errors to the client
        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->post('/api/contentWeb', function() use ($app) {
    $robot = $app->request->getJsonRawBody();
    $contentWeb = new ContentWeb();
    $contentWeb->name_content = $robot->name_content;
    $contentWeb->decription_content = $robot->decription_content;
    $contentWeb->date_content = $robot->date_content;
    $contentWeb->category_content = $robot->category_content;
    $contentWeb->image_content = $robot->image_content;
    $contentWeb->title_content = $robot->title_content;
    $contentWeb->summary_content = $robot->summary_content;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($contentWeb->save() == true) {

        //Change the HTTP status
        $response->setStatusCode(201, "Created");

        $robot->id = $contentWeb->id;

        $response->setJsonContent(array('status' => 'OK', 'data' => $robot));

    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        //Send errors to the client
        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->post('/api/slider', function() use ($app) {
    $robot = $app->request->getJsonRawBody();
    $slider = new Slider();
    $slider->name_slider = $robot->name_slider;
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($slider->save() == true) {

        //Change the HTTP status
        $response->setStatusCode(201, "Created");

        $robot->id_slider = $slider->id_slider;

        $response->setJsonContent(array('status' => 'OK', 'data' => $robot));

    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        //Send errors to the client
        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->post('/api/client', function() use ($app) {
    $robot = $app->request->getJsonRawBody();
    $client = new Client();
    $client->name_client = $robot->name_client;
    $client->image_client = $robot->image_client;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($client->save() == true) {

        //Change the HTTP status
        $response->setStatusCode(201, "Created");

        $robot->id_client = $client->id_client;

        $response->setJsonContent(array('status' => 'OK', 'data' => $robot));

    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        //Send errors to the client
        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->post('/api/career', function() use ($app) {
    $robot = $app->request->getJsonRawBody();
    $career = new Career();
    $career->tittle_career = $robot->tittle_career;
    $career->descriptions_career = $robot->descriptions_career;
    $career->responsibilities_career = $robot->responsibilities_career;
    $career->qualifications_career = $robot->qualifications_career;
    $career->date_post = $robot->date_post;
    $career->close_date = $robot->close_date;
    $career->location_career = $robot->location_career;
    $career->image_career = $robot->descriptions_career;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($career->save() == true) {

        //Change the HTTP status
        $response->setStatusCode(201, "Created");

        $robot->id = $career->id;

        $response->setJsonContent(array('status' => 'OK', 'data' => $robot));

    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        //Send errors to the client
        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});


/**
* Api PUT All Content
*/

$app->put('/api/user/{id:[0-9]+}', function($id) use($app) {

    $robot = $app->request->getJsonRawBody();
    $user = User::findFirstByid($id);
    $user->username = $robot->username;
    $user->password = $this->security->hash($robot->password);

    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($user->save() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->put('/api/contentWeb/{id:[0-9]+}', function($id) use($app) {

    $robot = $app->request->getJsonRawBody();
    $contentWeb = ContentWeb::findFirstByid($id);
    $contentWeb->name_content = $robot->name_content;
    $contentWeb->decription_content = $robot->decription_content;
    $contentWeb->date_content = $robot->date_content;
    $contentWeb->category_content = $robot->category_content;
    $contentWeb->image_content = $robot->image_content;
    $contentWeb->title_content = $robot->title_content;
    $contentWeb->summary_content = $robot->summary_content;

    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($contentWeb->save() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->put('/api/client/{id:[0-9]+}', function($id) use($app) {

    $robot = $app->request->getJsonRawBody();
    $client = Client::findFirstByid_client($id);
    $client->name_client = $robot->name_client;
    $client->image_client = $robot->image_client;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($client->save() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->put('/api/slider/{id:[0-9]+}', function($id) use($app) {

    $robot = $app->request->getJsonRawBody();
    $slider = Slider::findFirstByid_slider($id);
    $slider->name_slider = $robot->name_slider;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($slider->save() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

$app->put('/api/career/{id:[0-9]+}', function($id) use($app) {

    $robot = $app->request->getJsonRawBody();
    $career = Career::findFirstByid($id);
    $career->tittle_career = $robot->tittle_career;
    $career->descriptions_career = $robot->descriptions_career;
    $career->responsibilities_career = $robot->responsibilities_career;
    $career->qualifications_career = $robot->qualifications_career;
    $career->date_post = $robot->date_post;
    $career->close_date = $robot->close_date;
    $career->location_career = $robot->location_career;
    $career->image_career = $robot->descriptions_career;
    //Create a response
    $response = new Phalcon\Http\Response();

    //Check if the insertion was successful
    if ($career->save() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));
    }

    return $response;
});

/**
* Api DELETE All Content
*/

$app->delete('/api/user/{id:[0-9]+}', function($id) use ($app) {

    $user = User::findFirstByid($id);

    //Create a response
    $response = new Phalcon\Http\Response();

    if ($user->delete() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($user->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));

    }

    return $response;
});

$app->delete('/api/contentWeb/{id:[0-9]+}', function($id) use ($app) {

    $contentWeb = ContentWeb::findFirstByid($id);

    //Create a response
    $response = new Phalcon\Http\Response();

    if ($contentWeb->delete() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($contentWeb->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));

    }

    return $response;
});

$app->delete('/api/slider/{id:[0-9]+}', function($id) use ($app) {

    $slider = Slider::findFirstByid_slider($id);

    //Create a response
    $response = new Phalcon\Http\Response();

    if ($slider->delete() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($slider->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));

    }

    return $response;
});

$app->delete('/api/client/{id:[0-9]+}', function($id) use ($app) {

    $client = Client::findFirstByid_client($id);

    //Create a response
    $response = new Phalcon\Http\Response();

    if ($client->delete() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($client->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));

    }

    return $response;
});

$app->delete('/api/career/{id:[0-9]+}', function($id) use ($app) {

    $career = Career::findFirstByid($id);

    //Create a response
    $response = new Phalcon\Http\Response();

    if ($career->delete() == true) {
        $response->setJsonContent(array('status' => 'OK'));
    } else {

        //Change the HTTP status
        $response->setStatusCode(409, "Conflict");

        $errors = array();
        foreach ($career->getMessages() as $message) {
            $errors[] = $message->getMessage();
        }

        $response->setJsonContent(array('status' => 'ERROR', 'messages' => $errors));

    }

    return $response;
});




/**
 * Not found handler
 */
$app->notFound(function () use ($app) {
    $app->response->setStatusCode(404, "Not Found")->sendHeaders();
    echo $app['view']->render('404');
});

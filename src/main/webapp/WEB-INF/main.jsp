<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html xmlns:ng="http://angularjs.org" ng-app="pubsub">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Hello Cloud Pub/Sub</title>
  </head>

  <body ng-controller="pubsub.PubsubController as PubsubController">
    <h1>DevOps POC -- Pubsub <Using Jenkins-ci slave></h1>
    <form>
      <textarea ng-model="PubsubController.message" name="message" rows="1" cols="10"></textarea>
    </form>
    <button ng-click="PubsubController.sendMessage(PubsubController.message)">Press Send</button>
    <button ng-click="PubsubController.toggleAutoUpdate()" ng-show="PubsubController.isAutoUpdating">
        Stop auto update
    </button>
    <button ng-click="PubsubController.toggleAutoUpdate()" ng-hide="PubsubController.isAutoUpdating">
        Start auto update
    </button>
    per <input type="text" size="3" ng-model="PubsubController.interval"> seconds.
    <span ng-show="PubsubController.errorNotice"><b>{{ PubsubController.errorNotice }}</b></span>

    <h2>You sent below Messages:</h2>
    <ul>
        <li ng-repeat="m in PubsubController.messages track by $index">{{ m }}</li>
    </ul>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
    <script src="/js/pubsub.js"></script>
  </body>
</html>

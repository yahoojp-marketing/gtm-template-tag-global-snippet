___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "計測タグ グローバルスニペット（LINEヤフー）",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAB6ElEQVR4nO2a4W3CQAyFn7tAuwFsUDagG3SEZoRu0GODjAAjdAMYgQ1gA5jA/VELoTQxyeXoi4Q/CaFwvuTx+QgJQlQVj8wTOwCbEMAOwCYEsAOwCQHsAGxCADsAmxDADsAmBLADsAkB7ABsQgA7AJsQMGayiCxERDseny31c6f+JCLzG8ebW13XPtz5bYxdAS9DxlT1AODYUf8MIN04Xm11bRxt/4NgfASSM/YhIou2ARF5A/DuzK1ywvy7AFVdA9g5JXXH68mZs1PVbU4e1kkwOWNL6/YF215m7s+FIsC65a2C1NjuWhXAiO4D3K/B5IxdVoGIVABendpqTAiaAOvat1Oytufk1GxyzvzXsC+E/lwrXDETkS2AmVOTxgagCrDubZwS78Q3uvsAfwUAeV08w189vaELsC6uBk6rVfVU4vh0AUaN36724Qz/a3EQkxBg3ez7pop1H5iIAKPPKjiiYPeBCQmwrqYbZalk94EJCQAAVXW7azdSRZmUAAYhgB2AzT0FfDm/3TUf1R1zuExlBWxZB56CgFWJm5pc2AKKXtbmwBZQ9LI2h7ECDuh/E9Nkj/bu75364kj8WfrBCQHsAGxCADsAmxDADsAmBLADsAkB7ABsQgA7AJsQwA7AJgSwA7B5eAE/kvCaPyotCWgAAAAASUVORK5CYII\u003d"
  },
  "description": "計測タグにおけるグローバルスニペット用のタグです。\n※詳細は下の「リンク」にある「ドキュメント」をクリックしてご確認ください。",
  "categories": [
    "ADVERTISING",
    "MARKETING",
    "CONVERSIONS"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "tagId",
    "displayName": "tagId",
    "simpleValueType": true,
    "help": "タグIDです。 広告管理ツールの計測タグ管理画面から取得します。"
  },
  {
    "type": "CHECKBOX",
    "name": "useCookie",
    "checkboxText": "useCookie",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "識別子を cookie に保存する場合はチェックを入れます。"
  },
  {
    "type": "CHECKBOX",
    "name": "useLocalStorage",
    "checkboxText": "useLocalStorage",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "識別子をローカルストレージに保存する場合はチェックを入れます。"
  },
  {
    "type": "TEXT",
    "name": "autoLinkDomains",
    "displayName": "autoLinkDomains",
    "simpleValueType": true,
    "textAsList": true,
    "lineCount": 2,
    "help": "クロスドメイン計測機能（異なるドメイン間での計測機能）を利用するドメインです。入力欄には1行につき1ドメイン入力してください。",
    "canBeEmptyString": true
  },
  {
    "type": "TEXT",
    "name": "cookieDomain",
    "displayName": "cookieDomain",
    "simpleValueType": true,
    "help": "cookie を保存するドメインです。",
    "canBeEmptyString": true
  },
  {
    "type": "GROUP",
    "name": "Options",
    "displayName": "Advanced Matching",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "email",
        "displayName": "email",
        "simpleValueType": true,
        "help": "メールアドレスです。",
        "canBeEmptyString": true
      },
      {
        "type": "TEXT",
        "name": "phoneNumber",
        "displayName": "phoneNumber",
        "simpleValueType": true,
        "canBeEmptyString": true,
        "help": "電話番号です。"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "PageView Event",
    "displayName": "PageView Event",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "isTest",
        "checkboxText": "isTest",
        "simpleValueType": true,
        "help": "テストを表すフラグです。 テストとして計測対象から除外する場合は、チェックを入れてください。チェックを入れない場合は通常通り計測対象となります。初回はチェックありをおすすめします。",
        "defaultValue": false
      },
      {
        "type": "CHECKBOX",
        "name": "isExternalTransmission",
        "checkboxText": "isExternalTransmission",
        "simpleValueType": true,
        "help": "パートナー企業へのウェブサイト訪問ユーザーのデータ送信を希望しない場合はチェックを外してください。",
        "defaultValue": true
      },
      {
        "type": "TEXT",
        "name": "label",
        "displayName": "label",
        "simpleValueType": true,
        "help": "オーディエンスリスト作成時の絞り込み条件として設定するカスタムラベルです。",
        "canBeEmptyString": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
log('data =', data);

const query = require('queryPermission');
const createArgumentsQueue = require('createArgumentsQueue');
const injectScript = require('injectScript');
const url = 'https://tag.flvcdn.net/lytag.js';

const onSuccess = () => {
  log('global snippet: Script loaded successfully.');
  
  const lytag = createArgumentsQueue('lytag', 'lyDataLayer');
  const initConfig = {
    type: 'init',
    tagId: data.tagId,
    config: {
      autoLinkDomains: data.autoLinkDomains,
      cookieDomain: data.cookieDomain,
      useCookie: data.useCookie,
      useLocalStorage: data.useLocalStorage,
      email: data.email,
      phoneNumber: data.phoneNumber,
    }
  };
  log('initConfig =', initConfig);
  lytag(initConfig);

  const pageviewConfig = {
    type: 'event',
    eventType: 'page_view',
    tagId: data.tagId,
    config: {
      label: data.label,
      isTest: data.isTest,
      isExternalTransmission: data.isExternalTransmission === true,
    }
  };
  log('pageviewConfig =', pageviewConfig);
  lytag(pageviewConfig);
  
  data.gtmOnSuccess();
};	

const onFailure = () => {
  log('global snippet: Script load failed.');
  data.gtmOnFailure();
};

if (query('inject_script', url)) injectScript(url, onSuccess, onFailure);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "lyDataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "lytag"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://tag.flvcdn.net/lytag.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___
 
scenarios: []


___NOTES___

Created on 2025/6/26 17:28:34


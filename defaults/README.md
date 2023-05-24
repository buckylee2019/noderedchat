# API Usage

## API Title
### Debug Watson Assistant with session ID

1. Request params
    - type[string]: set as "debug" to start debugging
    - session_id[string]: watson assistant session id for which session you would like to check
2. Response params
    - arr[list]: containing request and response objects from watson assistant
3. curl examples
   
    ```
    curl --location --request POST '{noderedURL}/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type":"debug",
        "session_id":"feed34b3-de50-4dbf-b5c2-851499fd08f6"
    }'
    ```

4. curl Response examples
    ```
    "arr": [
            {
                "request": {
                    "input": {
                        "options": {
                            "alternate_responses": false,
                            "debug": true,
                            "disambiguation": {
                                "alternate_responses": false
                            },
                            "suggestion_only": false,
                            "return_context": true,
                            "export": true
                        },
                        "message_type": "text",
                        "source": {
                            "id": "anonymous_IBMuid-850f0e7a-2311-46a6-917d-72d5914a3538",
                            "type": "user"
                        },
                        "text": ""
                    },
                    "context": {
                        "skills": {
                            "main skill": {
                                "system": {},
                                "user_defined": {}
                            },
                            "actions skill": {
                                "system": {},
                                "user_defined": {}
                            }
                        },
                        "metadata": {
                            "user_id": "anonymous_IBMuid-850f0e7a-2311-46a6-917d-72d5914a3538"
                        },
                        "system": {
                            "dialog_request_counter": 1,
                            "dialog_turn_counter": 1,
                            "assistant_id": "8796b19c-ea0c-4b3c-a83d-059234f45b58"
                        },
                        "conversation_id": "feed34b3-de50-4dbf-b5c2-851499fd08f6",
                        "global": {
                            "system": {
                                "user_id": "anonymous_IBMuid-850f0e7a-2311-46a6-917d-72d5914a3538",
                                "timezone": "Asia/Taipei"
                            }
                        },
                        "integrations": {
                            "chat": {
                                "browser_info": {
                                    
                                }
                            }
                        }
                    }
                },
                "response": {
                    "output": {
                        "intents": [],
                        "debug": {
                            "auto_learn": {
                                "reports": {
                                    "lists": {
                                        "auto_learn_mode": "off"
                                    }
                                }
                            },
                            "log_messages": [],
                            "branch_exited": true,
                            "branch_exited_reason": "completed",
                            "nodes_visited": [
                                {
                                    "visit_reason": "welcome",
                                    "conditions": "welcome",
                                    "title": "Greeting",
                                    "dialog_node": "歡迎"
                                }
                            ],
                            "turn_events": [
                                {
                                    "reason": "welcome",
                                    "source": {
                                        "condition": "welcome",
                                        "title": "Greeting",
                                        "dialog_node": "歡迎"
                                    },
                                    "event": "node_visited"
                                }
                            ]
                        },
                        "entities": [],
                        "log_messages": [],
                        "text": [
                            "Hi! I am Wiwi😄\nIs there anything I can help?"
                        ],
                        "nodes_visited_details": [
                            {
                                "visit_reason": "welcome",
                                "conditions": "welcome",
                                "leaf": true,
                                "title": "Greeting",
                                "type": "standard",
                                "dialog_node": "歡迎"
                            }
                        ],
                        "generic": [
                            {
                                "response_type": "image",
                                "source": "https://troubleshootingv6-ppt-img.s3.jp-tok.cloud-object-storage.appdomain.cloud/sticker.png"
                            },
                            {
                                "response_type": "text",
                                "text": "Hi! I am Wiwi😄\nIs there anything I can help?"
                            },
                            {
                                "options": [
                                    {
                                        "label": "Troubleshooting",
                                        "value": {
                                            "input": {
                                                "text": "C:A01_FailureType"
                                            }
                                        }
                                    },
                                    {
                                        "label": "Repairment",
                                        "value": {
                                            "input": {
                                                "text": "C:A03_Repairment"
                                            }
                                        }
                                    },
                                    {
                                        "label": "Search my Part Number",
                                        "value": {
                                            "input": {
                                                "text": "C:A03_PartNumber"
                                            }
                                        }
                                    },
                                    {
                                        "label": "Dictionary",
                                        "value": {
                                            "input": {
                                                "text": "C:A04_Dictionary"
                                            }
                                        }
                                    }
                                ],
                                "response_type": "option",
                                "title": ""
                            }
                        ],
                        "nodes_visited": [
                            "歡迎"
                        ]
                    },
                    "user_id": "anonymous_IBMuid-850f0e7a-2311-46a6-917d-72d5914a3538",
                    "context": {
                        "skills": {
                            "main skill": {
                                "system": {
                                    "state": "xxx"
                                }
                            },
                            "actions skill": {
                                "system": {},
                                "user_defined": {}
                            }
                        },
                        "metadata": {
                            "user_id": "anonymous_IBMuid-850f0e7a-2311-46a6-917d-72d5914a3538"
                        },
                        "conversation_id": "feed34b3-de50-4dbf-b5c2-851499fd08f6",
                        "global": {
                            "system": {

                            },
                            "session_id": "feed34b3-de50-4dbf-b5c2-851499fd08f6"
                        },
                        "integrations": {
                            "chat": {
                                "browser_info": {

                                }
                            }
                        }
                    }
                }
            }
            ]```


## API Title
### Retrain by user query and selected option from watson assistant

1. Request params
    - type[string]: set as "retrain" to start relevance training
    - role[string]: can be "staff" or "manager
    - option[string]: option chosen from Watson Discovery result by user
    - session_id[string]: watson assistant session id 
    - timestamp[time]: user query time
2. Response params
    - natural_language_query[string]: recoverd query from Watson Assistant log
    - examples[list]: 
3. curl request example
   
    ```curl --location --request POST '{noderedURL}/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "data": "something went wrong on my monitor",
        "role": "staff",
        "type": "retrain",
        "option": "B. The screen shows nothing but the light.",
        "timestamp": "2022-07-01 17:40:16",
        "session_id": "5b7015c5-4418-45c4-bd00-f34cc6a52ddf"
    }'```

4. curl response example
   
    ```{
        "natural_language_query": "something went wrong on my monitor",
        "filter": "",
        "examples": [
            {
                "document_id": "8a43d302-5d34-4212-a6ba-a0c77e503b80_0",
                "relevance": 0,
                "collection_id": "6e0b2b4b-fe0e-1ea6-0000-01814c9584ed",
                "document_detailed": {
                    "Faiure Type": "Display backlight on with no display / Display no backlight",
                    "Failre Symptom": "A. Caps button light on the keyboard is on."
                }
            },
            {
                "document_id": "8a43d302-5d34-4212-a6ba-a0c77e503b80_1",
                "relevance": 10,
                "collection_id": "6e0b2b4b-fe0e-1ea6-0000-01814c9584ed",
                "document_detailed": {
                    "Faiure Type": "Display backlight on with no display / Display no backlight",
                    "Failre Symptom": "B. The screen shows nothing but the light."
                }
            },
            {
                "document_id": "8a43d302-5d34-4212-a6ba-a0c77e503b80_2",
                "relevance": 0,
                "collection_id": "6e0b2b4b-fe0e-1ea6-0000-01814c9584ed",
                "document_detailed": {
                    "Faiure Type": "Display backlight on with no display / Display no backlight",
                    "Failre Symptom": "C. Charging LED flicker."
                }
            }
        ]
    } ```


## API Title
### User feedback from Watson Assistant
1. Request params
   - type[string]: set as "comment" to save comment from user
   - comment[string]: user free type
   - timestamp[time]: time of user feedback
   - session_id[string]: watson assistant session id 
2. Response params
   None
3. curl examples
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "comment",
        "comment": "you can be smarter",
        "timestamp": "2022-07-01 18:12:10",
        "session_id": "5b7015c5-4418-45c4-bd00-f34cc6a52ddf"
    }'
    ```
4. curl Response examples
    status code 200


## API Title
### Search part number by natural languge query.
1. Request params
   - type[string]: set as "bom2" to search related partnumber
   - data[string]: user free type
   - session_id[string]: watson assistant session id 
2. Response params
   - arr[list]: list of possible part number and description
   - pn_exist[Boolean]: 'Y' if match results are greater than 3, 'N' if there's no result or result's confidence score is lower than 0.7
3. curl examples

   _3.a_
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "bom2",
        "data": "I want to search my partnumber of battery 4 cells",
        "session_id": "5b7015c3-4418-45c4-bd00-k34cc6a52ddf"
    }'
    ```
    _3.b_ Under same session id, the query would be aggregated with preious one, and use it to search new result.
    ```
    curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
    "type": "bom2",
    "data": "64WHR",
    "session_id": "5b7015c3-4418-45c4-bd00-k34cc6a52ddf"
    }'
    ```
4. curl Response examples
   
    _4.a_
    ```
    {
        "arr": [
            {
                "response_type": "text",
                "text": "Please give more details, information is not enough.\n\n"
            }
        ],
        "pn_exist": "N"
    }
    ```
    _4.b_
    ```
    {
    "arr": [
        {
            "response_type": "text",
            "text": "The possible part number(s) could be as follows: \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : 3RR09\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, (Primary)\nConfidence : 0.08518 \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : JGCCT\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, BYD, (Primary)\nConfidence : 0.07529 \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : N9XX1\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, (Primary)\nConfidence : 0.07161 \n\n"
        }
    ],
    "pn_exist": "Y"
    }
    ```


    ## API Title
### Query the top 3 failure symptom recommendations
1. Request params
    - type[string]: set as <mark>"text"</mark> to start
    searching for failure symptom collection
    - data[string]: the search query to run that returns the top 3 matching documents according to the users' input string
2. Response params
    - arr[list]: a response that contains the title, options and response_type
        >+ title: It is set to fixed string <br>(What kind of the failure symptom have you encountered?)
        >+ options: A list of array returns the most top 3 relevant search results including label and value. The suggesting failure symptom and document_id are listed in value field. 
        >+ response_type: It is fixed and set to option.

     - no_result[Boolean]: 
        >'Y' if object containing an array of empty options
        
        >'N' if object containing an array of possible options
3. curl examples
   
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "text",
        "data":"can not power on"
    }'
    ```
4. curl Response examples
    ```json
    "arr": [
        {
            "title": "What kind of the failure symptom have you encountered?",
            "options": [
                {
                    "label": "Power\u000bCharging LED Off",
                    "value": {
                        "input": {
                            "text": "B. Power\u000bCharging LED Off",
                            "document_id": "03433123-bf58-4c5f-9dd4-bf433311f8c5_2"
                        }
                    }
                },
                {
                    "label": "Power \u000bCharging LED On",
                    "value": {
                        "input": {
                            "text": "A. Power \u000bCharging LED On",
                            "document_id": "03433123-bf58-4c5f-9dd4-bf433311f8c5_0"
                        }
                    }
                },
                {
                    "label": "more options",
                    "value": {
                        "input": {
                            "text": "More Options"
                        }
                    }
                }
            ],
            "response_type": "option"
        }
    ],
    "no_result": "N"
    ```
## API Title
### Query the other 3 related failure symptom recommendations
 1. Request params
    - type[string]: set as <mark>"moreoptions"</mark> to start
    searching for failure symptom collection
    - data[string]: the search query to run that returns the other 3 matching documents according to the users' input string
2. Response params
    - arr[list]: a response that contains the title, options, description and response_type
        >+ title: It is set to fixed string <br>(Here are the other three options)
        >+ options: A list of array returns the other 3 relevant search results including label and value respectively. The suggesting failure symptom is listed in value field. 
        >+ response_type: It is fixed and set to option.
        >+ description: It is fixed and set to empty string
        >+ response_type: It is fixed and set to option.
3. curl examples
   
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "moreoptions",
        "data":"can not power on"
    }'
    ```
4. curl Response examples
    ```json
    "arr": [
        {
            "title": "Here are the other three options.",
            "options": [
                {
                    "label": "Auto power on",
                    "value": {
                        "input": {
                            "text": "Auto power on"
                        }
                    }
                },
                {
                    "label": "Both speaker is not audible",
                    "value": {
                        "input": {
                            "text": "Both speaker is not audible"
                        }
                    }
                },
                {
                    "label": "Only one side of speaker is audible.",
                    "value": {
                        "input": {
                            "text": "Only one side of speaker is audible."
                        }
                    }
                },
                {
                    "label": "Contact Support Team",
                    "value": {
                        "input": {
                            "text": "C:A01_FailureType_CallSupportTeam"
                        }
                    }
                }
            ],
            "description": "",
            "response_type": "option"
        }
    ]
    ```
## API Title
### Query the top 3 related parts disassembly video recommendations
1. Request params
    - type[string]: set as <mark>"video"</mark> to start
    searching for parts disassembly video collections
    - data[string]: the search query to run that returns the top 3 matching documents according to the user's input string
2. Response params
    - arr[list]: a response that contains the text and response_type for the query. 
        >+ text: It contains the name of the video embedded with a hyperlink that can redirect to the YouTube channel and start playing with the specified period.
        >+ response_type: It is fixed and set to text'
     - inputText[string]: the user's input string
3. curl examples
   
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "video",
        "data":"keyboard"
    }'
    ```
4. curl Response examples
    ```json
    "arr": [
        {
            "text": "Please check below video(s). 👇",
            "response_type": "text"
        },
        {
            "text": "The link to go to video is:  <a  target=\"_blank\" href=\"https://youtu.be/pE4bwyfVyIE?t=61.0s\">WLAN&WWAN Disassembly</a>.<br/>Related text:<br/>three botton left gap the gap between keyboard and base cover above USB port<br/>",
            "response_type": "text"
        },
        {
            "text": "The link to go to video is:  <a  target=\"_blank\" href=\"https://youtu.be/pE4bwyfVyIE?t=54.0s\">WLAN&WWAN Disassembly</a>.<br/>Related text:<br/>two lower gap the gap between keyboard and base cover above screen opening side<br/>",
            "response_type": "text"
        },
        {
            "text": "The link to go to video is:  <a  target=\"_blank\" href=\"https://youtu.be/WhaMo7TYQio?t=55.0s\">Fan Disassembly</a>.<br/>Related text:<br/>two lower gap the gap between keyboard and base cover above screen opening side<br/>",
            "response_type": "text"
        }
    ],
    "inputText": "keyboard"
    ```
## API Title
### Find related PartNo for requesting /ordering parts
1. Request params
    - type[string]: set as <mark>"bom"</mark> to start
    searching for collections that only related to PartNo
    - version[string]: set to either <mark>"ANTMAN 14"</mark> or <mark>"ANTMAN 16"</mark> for searching related platform configuration.
     - commodity[string]: 4 main commodities, namely, <mark>"LCD"</mark>, <mark>"MOTHERBOARD"</mark>, <mark>"BATTERY"</mark>, <mark>PALMREST"</mark> are provided for user to search; each commodity need to pair with specific params in order to find the corresponding PartNo. Please find the table below for further information.

        | Commodity   | params         |
        | ----------- | -------------  |
        | LCD         | NULL           |
        | MOTHERBOARD | core, graphic  |
        | BATTERY     | cell, whr      |
        | PALMREST    | country, color |

2. Response params
    - arr[list]: a response that contains the text and response_type for the query. 
        >+ text: List of possible part number and functional description
        >+ response_type: It is fixed and set to text
     - pn_exist[Boolean]: 
        >'Y' if object containing an array of possible PartNo
        
        >'N' if object containing an array of empty PartNo
    - whr[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - cell[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - core[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - color[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - country[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - graphic[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - version[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
    - commodity[string]: it is fixed and set to null, for the purpose of clearing Watson Assistant's context varaible
3. curl examples

   _3.a_ : An query example for LCD 
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "bom",
        "version":"ANTMAN 14",
        "commodity":"LCD"
    }'
    ```

    _3.b_ : An query example for MOTHERBOARD
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "bom",
        "version":"ANTMAN 16",
        "commodity":"MOTHERBOARD",
        "core":"I5",
        "graphic":"UMA"
    }'
    ```
    _3.c_ :  An query example for BATTERY
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "bom",
        "version":"ANTMAN 16",
        "commodity":"BATTERY",
        "cell":"4 Cell",
        "whr":"64WHR"
    }'
    ```
    _3.d_ : An query example for PALMREST
   ```
   curl --location --request POST 'https://noderedwistronmvp.o7bzwetyibo.jp-tok.codeengine.appdomain.cloud/result' \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "type": "bom",
        "version":"ANTMAN 16",
        "commodity":"PALMREST",
        "country":"Japan",
        "color":"Silver"
    }'
    ```
4. curl Response examples

    _4.a_ : An response output example for LCD
    ```json
    "arr": [
        {
            "response_type": "text",
            "text": "The possible part number(s) could be as follows: \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : 50G18\nFunctional Desc : \nASSY LCD, HUD, Touch Screen, FHD+, 250typ, 213 min., Antiglare, EDP, Camera, Cover, FHD \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : 7PM40\nFunctional Desc : \nSilver, ASSY LCD, HUD, Touch Screen, FHD+, 250typ, 213 min., Antiglare, EDP, Camera, Dual, With Bezel \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : HWY0J\nFunctional Desc : \nSilver, ASSY LCD, HUD, Touch Screen, FHD+, 250typ, 213 min., Antiglare, EDP, Camera, Dual, FHD \n\n"
        }
    ],
    "pn_exist": "Y",
    "whr": "null",
    "cell": "null",
    "core": "null",
    "color": "null",
    "country": "null",
    "graphic": "null",
    "version": "null",
    "commodity": "null"
    ```
    _4.b_ : An response output example for MOTHERBOARD
    ```json
    "arr": [
        {
            "response_type": "text",
            "text": "The possible part number(s) could be as follows: \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : FYWPN\nFunctional Desc : \nAlso Ship Enabled, ASSY PWA Motherboard, UMA, Intel I5- \n\n"
        }
    ],
    "pn_exist": "Y",
    "whr": "null",
    "cell": "null",
    "core": "null",
    "color": "null",
    "country": "null",
    "graphic": "null",
    "version": "null",
    "commodity": "null"
    ```
    _4.c_ : An response output example for BATTERY
    ```json
    "arr": [
        {
            "response_type": "text",
            "text": "The possible part number(s) could be as follows: \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : JGCCT\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, BYD, (Primary) \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : 3RR09\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, (Primary) \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : N9XX1\nFunctional Desc : \nBattery, 64WHR, 4 Cell, Lithium Ion, (Primary) \n\n"
        }
    ],
    "pn_exist": "Y",
    "whr": "null",
    "cell": "null",
    "core": "null",
    "color": "null",
    "country": "null",
    "graphic": "null",
    "version": "null",
    "commodity": "null"
    ```
    _4.d_ : An response output example for PALMREST
    ```json
    "arr": [
        {
            "response_type": "text",
            "text": "The possible part number(s) could be as follows: \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : TJ68D\nFunctional Desc : \nJapan, ASSY Palmrest, Silver, 83 Keys, Touchpad \n\n"
        },
        {
            "response_type": "text",
            "text": "PartNo : 17RMW\nFunctional Desc : \nJapan, ASSY Palmrest, Silver, 83 Keys, Touchpad \n\n"
        }
    ],
    "pn_exist": "Y",
    "whr": "null",
    "cell": "null",
    "core": "null",
    "color": "null",
    "country": "null",
    "graphic": "null",
    "version": "null",
    "commodity": "null"
    ```

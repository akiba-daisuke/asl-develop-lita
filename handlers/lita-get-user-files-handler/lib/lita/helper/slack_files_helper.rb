#coding: utf-8

require 'slack'
require_relative './slack_api_helper.rb'

class SlackFilesHelper < SlackApiHelper
    def getList(client)
        #Slackのファイル一覧を取得
        api_response = client.files.list()

        if check_api_response(api_response) then
            #取得したファイル情報の一覧を返す
            api_response.body['files']
        else
            @error_code = api_response.body['error'].to_s
        end
    end
end

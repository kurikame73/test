package com.yorizip.recipe.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class ApiExplorer {
    public static void main(String[] args) {
        try {
            // 기본 API URL 및 필수 파라미터 설정
            String apiKey = "67f9fcdd1106497bb4f2"; // 실제 API 키로 변경
            String serviceId = "COOKRCP01"; // 서비스 ID
            String dataType = "json"; // 요청 파일 타입
            String startIdx = "1"; // 요청 시작 위치
            String endIdx = "5"; // 요청 종료 위치

            // URL을 구성합니다.
            StringBuilder urlBuilder = new StringBuilder("http://openapi.foodsafetykorea.go.kr/api/");
            urlBuilder.append(apiKey)
                      .append("/")
                      .append(serviceId)
                      .append("/")
                      .append(dataType)
                      .append("/")
                      .append(startIdx)
                      .append("/")
                      .append(endIdx);

            // URL 객체를 생성하고 HTTP 연결을 엽니다.
            URL url = new URL(urlBuilder.toString());
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            System.out.println("Response code: " + conn.getResponseCode()); // 응답 코드 출력

            BufferedReader rd;
            if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
            }

            // 응답 결과를 읽어들입니다.
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();
            System.out.println(sb.toString()); // 응답 결과 출력
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

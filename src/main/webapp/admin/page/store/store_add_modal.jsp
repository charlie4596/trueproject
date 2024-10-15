<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매장 정보 추가 모달</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap');
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background-color: white;
            border-radius: 1rem;
            width: 100%;
            max-width: 700px;
            max-height: 90vh;
            overflow-y: auto;
        }
        .input-group {
            transition: all 0.3s ease;
        }
        .input-group:focus-within {
            transform: translateY(-2px);
        }
    </style>
</head>
<body class="bg-gray-100">
    <div class="modal-overlay">
        <div class="modal-content shadow-xl">
            <div class="bg-orange-600 text-white px-6 py-4 flex justify-between items-center">
                <h2 class="text-xl font-semibold">매장 정보 추가</h2>
                <button class="text-white hover:text-gray-200 transition duration-150">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
            <form class="p-6 space-y-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div class="input-group md:col-span-2">
                        <label for="store_name" class="block text-sm font-medium text-gray-700 mb-1">매장명</label>
                        <input type="text" id="store_name" name="store_name" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="행복한 카페">
                    </div>
                    <div class="input-group md:col-span-2">
                        <label for="address" class="block text-sm font-medium text-gray-700 mb-1">주소</label>
                        <input type="text" id="address" name="address" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="서울특별시 강남구 테헤란로 123">
                    </div>
                    <div class="input-group">
                        <label for="store_contact" class="block text-sm font-medium text-gray-700 mb-1">매장 연락처</label>
                        <input type="tel" id="store_contact" name="store_contact" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="02-1234-5678">
                    </div>
                    <div class="input-group">
                        <label for="store_status" class="block text-sm font-medium text-gray-700 mb-1">매장 상태</label>
                        <select id="store_status" name="store_status" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500">
                            <option value="open">영업 중</option>
                            <option value="closed">폐업</option>
                            <option value="temporary_closed">임시 휴업</option>
                            <option value="coming_soon">오픈 예정</option>
                        </select>
                    </div>
                    <div class="input-group">
                        <label for="open_time" class="block text-sm font-medium text-gray-700 mb-1">매장 오픈 시간</label>
                        <input type="time" id="open_time" name="open_time" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="09:00">
                    </div>
                    <div class="input-group">
                        <label for="close_time" class="block text-sm font-medium text-gray-700 mb-1">매장 마감 시간</label>
                        <input type="time" id="close_time" name="close_time" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="22:00">
                    </div>
                    <div class="input-group">
                        <label for="latitude" class="block text-sm font-medium text-gray-700 mb-1">위도</label>
                        <input type="number" id="latitude" name="latitude" step="0.000001" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="37.123456">
                    </div>
                    <div class="input-group">
                        <label for="longitude" class="block text-sm font-medium text-gray-700 mb-1">경도</label>
                        <input type="number" id="longitude" name="longitude" step="0.000001" class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-orange-500 focus:border-orange-500" value="127.123456">
                    </div>
                </div>
                <div class="flex justify-end space-x-3">
                    <button type="button" class="px-4 py-2 bg-gray-200 text-gray-700 rounded-md hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-500 focus:ring-offset-2 transition duration-150">취소</button>
                    <button type="submit" class="px-4 py-2 bg-orange-600 text-white rounded-md hover:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-orange-500 focus:ring-offset-2 transition duration-150">저장</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
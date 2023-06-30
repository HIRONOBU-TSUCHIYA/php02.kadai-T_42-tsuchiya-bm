<?php
// ファイルを読み込む
$data = file_get_contents('data/data.txt');
// 読み込んだものをブラウザに表示する
echo nl2br($data);

// nl2br = /n to br 「改行」
$dataArray = explode("\n", $data);

// 各日付の合計金額を計算
$sumByDate = [];
foreach ($dataArray as $line) {
    $matches = [];
    preg_match('/日付：(.*?)　.*金額：￥(\d+)/', $line, $matches);
    
    if (count($matches) === 3) {
        $date = $matches[1];
        $price = $matches[2];
        
        if (!isset($sumByDate[$date])) {
            $sumByDate[$date] = 0;
        }
        
        $sumByDate[$date] += intval($price);
    }
}

// 日付を逆順にソート
krsort($sumByDate);

// 日付と合計金額のデータを配列に格納
$dates = [];
$sums = [];
foreach ($sumByDate as $date => $sum) {
    $dates[] = $date;
    $sums[] = $sum;
}

// グラフ描画
echo '<canvas id="barChart1"></canvas>';
echo '<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>';
echo '<script>';
echo 'var ctx1 = document.getElementById("barChart1").getContext("2d");';
echo 'var barChart1 = new Chart(ctx1, {';
echo '    type: "bar",';
echo '    data: {';
echo '        labels: ' . json_encode($dates) . ',';
echo '        datasets: [{';
echo '            label: "合計金額",';
echo '            data: ' . json_encode($sums) . ',';
echo '            backgroundColor: "gold"';
echo '        }]';
echo '    },';
echo '    options: {';
echo '        scales: {';
echo '            y: {';
echo '                beginAtZero: true';
echo '            }';
echo '        }';
echo '    }';
echo '});';
echo '</script>';

// 各会社の合計金額を計算
$sumByCompany = [];
foreach ($dataArray as $line) {
    $matches = [];
    preg_match('/依頼主：(.*?)　.*金額：￥(\d+)/', $line, $matches);
    
    if (count($matches) === 3) {
        $Company_name = $matches[1];
        $price = $matches[2];
        
        if (!isset($sumByCompany[$Company_name])) {
            $sumByCompany[$Company_name] = 0;
        }
        
        $sumByCompany[$Company_name] += intval($price);
    }
}

// 会社名と合計金額のデータを配列に格納
$companies = [];
$sumsByCompany = [];
foreach ($sumByCompany as $Company_name => $sum) {
    $companies[] = $Company_name;
    $sumsByCompany[] = $sum;
}

// グラフ描画
echo '<canvas id="barChart2"></canvas>';
echo '<script>';
echo 'var ctx2 = document.getElementById("barChart2").getContext("2d");';
echo 'var barChart2 = new Chart(ctx2, {';
echo '    type: "bar",';
echo '    data: {';
echo '        labels: ' . json_encode($companies) . ',';
echo '        datasets: [{';
echo '            label: "合計金額",';
echo '            data: ' . json_encode($sumsByCompany) . ',';
echo '            backgroundColor: "lightgreen"';
echo '        }]';
echo '    },';
echo '    options: {';
echo '        scales: {';
echo '            y: {';
echo '                beginAtZero: true';
echo '            }';
echo '        }';
echo '    }';
echo '});';
echo '</script>';
?>

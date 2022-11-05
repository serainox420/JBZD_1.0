package com.video.adsdk.internal;

import com.video.adsdk.interfaces.DownloadProgressListener;
import com.video.adsdk.interfaces.FileDownloader;
import com.video.adsdk.interfaces.PrefetcherListener;
import com.video.adsdk.interfaces.WifiListener;
import com.video.adsdk.interfaces.WifiMonitor;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes3.dex */
public class Prefetcher implements DownloadProgressListener {
    private FileDownloader fileDownloader;
    private WifiMonitor wifiMonitor;
    private final Queue<ADVideoFile> videoUrlQueue = new ConcurrentLinkedQueue();
    private boolean isWifiActive = false;
    private Thread backgroundDownloadProcess = null;
    List<PrefetcherListener> listeners = new ArrayList();
    private boolean wiFiOnly = true;

    private Thread createDownloaderThread() {
        return new Thread(new Runnable() { // from class: com.video.adsdk.internal.Prefetcher.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (Prefetcher.this.videoUrlQueue.isEmpty()) {
                        break;
                    }
                    Prefetcher.this.fileDownloader.deleteExpiredFiles();
                    ADVideoFile aDVideoFile = (ADVideoFile) Prefetcher.this.videoUrlQueue.poll();
                    if (Prefetcher.this.canDownload()) {
                        try {
                            for (PrefetcherListener prefetcherListener : Prefetcher.this.listeners) {
                                prefetcherListener.onPrefetchingStarted();
                            }
                            Prefetcher.this.fileDownloader.downloadFile(aDVideoFile);
                            for (PrefetcherListener prefetcherListener2 : Prefetcher.this.listeners) {
                                prefetcherListener2.onPrefetchedFile(aDVideoFile);
                            }
                            if (!aDVideoFile.shouldPlayAfterPrefetching()) {
                                z = true;
                            }
                        } catch (Exception e) {
                            Prefetcher.this.prefetchingFailed();
                            e.printStackTrace();
                        }
                    }
                    z2 = z;
                }
                if (z) {
                    for (PrefetcherListener prefetcherListener3 : Prefetcher.this.listeners) {
                        prefetcherListener3.onPrefetchingDidComplete();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prefetchingFailed() {
        for (PrefetcherListener prefetcherListener : this.listeners) {
            prefetcherListener.onPrefetchingFailed();
        }
    }

    public void addPrefetcherListener(PrefetcherListener prefetcherListener) {
        if (prefetcherListener != null && !this.listeners.contains(prefetcherListener)) {
            this.listeners.add(prefetcherListener);
        }
    }

    public void removeListener(PrefetcherListener prefetcherListener) {
        if (this.listeners.contains(prefetcherListener)) {
            this.listeners.remove(prefetcherListener);
        }
    }

    public void setWifiMonitor(WifiMonitor wifiMonitor) {
        this.wifiMonitor = wifiMonitor;
        this.isWifiActive = wifiMonitor.isWifiActive();
        this.wifiMonitor.registerWifiListener(new WifiListener() { // from class: com.video.adsdk.internal.Prefetcher.2
            @Override // com.video.adsdk.interfaces.WifiListener
            public void onWifiDeactivated() {
                Prefetcher.this.isWifiActive = false;
                Prefetcher.this.stopPrefetching();
            }

            @Override // com.video.adsdk.interfaces.WifiListener
            public void onWifiActivated() {
                Prefetcher.this.isWifiActive = true;
                Prefetcher.this.startPrefetching();
            }
        });
    }

    public void setFileDownloader(FileDownloader fileDownloader) {
        this.fileDownloader = fileDownloader;
        this.fileDownloader.setDownloadProgressListener(this);
    }

    public void prefetchFile(ADVideoFile aDVideoFile) {
        for (ADVideoFile aDVideoFile2 : this.videoUrlQueue) {
            if (aDVideoFile2.getUrl().equals(aDVideoFile.getUrl())) {
                return;
            }
        }
        this.videoUrlQueue.add(aDVideoFile);
        if (!isPrefetchingRunning()) {
            startPrefetching();
        }
    }

    @Override // com.video.adsdk.interfaces.DownloadProgressListener
    public void onProgress(double d) {
        for (PrefetcherListener prefetcherListener : this.listeners) {
            prefetcherListener.onProgress(d);
        }
    }

    public void startPrefetching() {
        if (!isPrefetchingRunning()) {
            this.backgroundDownloadProcess = createDownloaderThread();
            this.backgroundDownloadProcess.start();
        }
    }

    public void stopPrefetching() {
        if (isPrefetchingRunning()) {
            this.backgroundDownloadProcess.interrupt();
            this.backgroundDownloadProcess = null;
        }
    }

    public void deleteExpiredFiles() {
        if (this.fileDownloader != null) {
            this.fileDownloader.deleteExpiredFiles();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDownload() {
        return !this.wiFiOnly || this.isWifiActive;
    }

    public boolean isPrefetchingRunning() {
        return this.backgroundDownloadProcess != null && this.backgroundDownloadProcess.isAlive();
    }

    public void setWiFiOnly(boolean z) {
        this.wiFiOnly = z;
    }
}

.class public final Lcom/inmobi/commons/thinICE/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

.field private static c:Landroid/os/Handler;

.field private static d:Z

.field private static e:Ljava/lang/Runnable;

.field private static f:Z

.field private static final g:Landroid/content/BroadcastReceiver;

.field private static final h:Landroid/content/IntentFilter;

.field private static i:Landroid/os/PowerManager$WakeLock;

.field private static j:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    sput-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    .line 22
    sput-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b:Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    .line 23
    sput-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    .line 24
    sput-boolean v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d:Z

    .line 26
    new-instance v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner$1;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner$1;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->e:Ljava/lang/Runnable;

    .line 113
    sput-boolean v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f:Z

    .line 115
    new-instance v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner$2;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner$2;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->g:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->h:Landroid/content/IntentFilter;

    .line 154
    sput-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    .line 176
    sput-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b:Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    return-object v0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d()V

    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static declared-synchronized d()V
    .locals 3

    .prologue
    .line 96
    const-class v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    monitor-exit v1

    return-void

    .line 97
    :cond_0
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    sget-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f()V

    .line 99
    sget-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->h()V

    .line 101
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j()V

    .line 103
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b:Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e()V
    .locals 5

    .prologue
    .line 134
    sget-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f:Z

    .line 136
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->g:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->h:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    sget-object v4, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 140
    sget-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->f:Z

    .line 143
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static g()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 158
    const/4 v1, 0x1

    const-string v2, "wifiscanrequester.CpuLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    .line 159
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 161
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_1
    return-void
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i:Landroid/os/PowerManager$WakeLock;

    .line 173
    :cond_1
    return-void
.end method

.method private static i()V
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 180
    const/4 v1, 0x2

    const-string v2, "wifiscanrequester.WiFiScanLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    .line 181
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 183
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 186
    :cond_1
    return-void
.end method

.method private static j()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 193
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->j:Landroid/net/wifi/WifiManager$WifiLock;

    .line 195
    :cond_1
    return-void
.end method

.method public static requestScan(Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;)Z
    .locals 7

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->requestScan(Landroid/os/Looper;Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;JZ)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized requestScan(Landroid/os/Looper;Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;JZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 79
    const-class v2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    monitor-exit v2

    return v0

    .line 80
    :cond_0
    :try_start_1
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 82
    :cond_1
    sput-object p1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a:Landroid/content/Context;

    .line 83
    sput-object p2, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b:Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    .line 84
    sput-boolean p5, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d:Z

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    .line 86
    sget-object v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c:Landroid/os/Handler;

    sget-object v3, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    sget-boolean v1, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->d:Z

    if-eqz v1, :cond_2

    .line 88
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->i()V

    .line 89
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->g()V

    .line 91
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->e()V

    .line 92
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

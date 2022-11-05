.class public Lcom/google/android/gms/internal/zzpf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field final zzWD:Ljava/lang/String;

.field zzWW:I

.field zzWY:J

.field zzWZ:J

.field zzXa:I

.field zzXb:J

.field zzXc:I

.field zzXd:I

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    iput v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWD:Ljava/lang/String;

    return-void
.end method

.method public static zzI(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Theme.Translucent"

    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to fetch AdActivity theme"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public zzai(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;J)V
    .locals 10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzks()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    sub-long v2, v4, v2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCR:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpf;->zzai(I)V

    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    const-string v2, "gw"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    monitor-exit v1

    :goto_2
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzku()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpf;->zzai(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzpe;->zzp(J)Ljava/util/concurrent/Future;

    :goto_3
    monitor-exit v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkt()J

    move-result-wide v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public zzjV()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzjW()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzkE()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    return-wide v0
.end method

.method public zzku()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    return v0
.end method

.method public zzo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpf;->zzWD:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "preqs_in_session"

    iget v3, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "time_in_session"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpf;->zzI(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

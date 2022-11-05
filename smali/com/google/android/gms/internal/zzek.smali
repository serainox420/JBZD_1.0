.class public Lcom/google/android/gms/internal/zzek;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzek$zza;
    }
.end annotation


# instance fields
.field private final zzrJ:Ljava/lang/Object;

.field private zzzG:Lcom/google/android/gms/internal/zzew;

.field private final zzzH:Lcom/google/android/gms/internal/zzeb;

.field private final zzzI:Lcom/google/android/gms/internal/zzea;

.field private final zzzJ:Lcom/google/android/gms/internal/zzfj;

.field private final zzzK:Lcom/google/android/gms/internal/zzht;

.field private final zzzL:Lcom/google/android/gms/internal/zzny;

.field private final zzzM:Lcom/google/android/gms/internal/zzlk;

.field private final zzzN:Lcom/google/android/gms/internal/zzky;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/internal/zzny;Lcom/google/android/gms/internal/zzlk;Lcom/google/android/gms/internal/zzky;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzek;->zzzH:Lcom/google/android/gms/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzek;->zzzI:Lcom/google/android/gms/internal/zzea;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzek;->zzzJ:Lcom/google/android/gms/internal/zzfj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzek;->zzzK:Lcom/google/android/gms/internal/zzht;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzek;->zzzL:Lcom/google/android/gms/internal/zzny;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzek;->zzzM:Lcom/google/android/gms/internal/zzlk;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzek;->zzzN:Lcom/google/android/gms/internal/zzky;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzew;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzek;->zzeH()Lcom/google/android/gms/internal/zzew;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzek;->zzc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzeb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzH:Lcom/google/android/gms/internal/zzeb;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzI:Lcom/google/android/gms/internal/zzea;

    return-object v0
.end method

.method private zzc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzfj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzJ:Lcom/google/android/gms/internal/zzfj;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzht;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzK:Lcom/google/android/gms/internal/zzht;

    return-object v0
.end method

.method private static zzeG()Lcom/google/android/gms/internal/zzew;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/zzek;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzew$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzew;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private zzeH()Lcom/google/android/gms/internal/zzew;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzek;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzG:Lcom/google/android/gms/internal/zzew;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzek;->zzeG()Lcom/google/android/gms/internal/zzew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzG:Lcom/google/android/gms/internal/zzew;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzG:Lcom/google/android/gms/internal/zzew;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzny;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzL:Lcom/google/android/gms/internal/zzny;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzlk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzM:Lcom/google/android/gms/internal/zzlk;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzek;)Lcom/google/android/gms/internal/zzky;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzek;->zzzN:Lcom/google/android/gms/internal/zzky;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)Lcom/google/android/gms/internal/zzet;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzek$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzek$2;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzet;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzet;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzek$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzek$1;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)V

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzet;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhh;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzek$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzek$6;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhh;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zznu;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzek$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzek$7;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznu;

    return-object v0
.end method

.method zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/zzek$zza",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqe;->zzaf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzek$zza;->zzeQ()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzek$zza;->zzeR()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzek$zza;->zzeR()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzek$zza;->zzeQ()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzer;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzek$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzek$4;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzer;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzet;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzek$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzek$3;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)V

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzet;

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzlf;
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzek$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzek$8;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlf;

    return-object v0
.end method

.method public zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzkz;
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzek$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzek$9;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkz;

    return-object v0
.end method

.method public zzl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzey;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzek$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzek$5;-><init>(Lcom/google/android/gms/internal/zzek;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zzek$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzey;

    return-object v0
.end method

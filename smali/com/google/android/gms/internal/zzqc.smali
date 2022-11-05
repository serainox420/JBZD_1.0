.class public Lcom/google/android/gms/internal/zzqc;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static zzYH:Lcom/google/android/gms/internal/zzqc;


# instance fields
.field zzIA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzqc;->zzYH:Lcom/google/android/gms/internal/zzqc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzld()Lcom/google/android/gms/internal/zzqc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzqc;->zzYH:Lcom/google/android/gms/internal/zzqc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqc;->zzYH:Lcom/google/android/gms/internal/zzqc;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzqc;->zzYH:Lcom/google/android/gms/internal/zzqc;

    return-object v0
.end method


# virtual methods
.method public zzaa(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->zzIA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqc$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/zzqc$1;-><init>(Lcom/google/android/gms/internal/zzqc;Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc;->zzIA:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzab(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Updating user agent."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->zzIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "admob_user_agent"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "user_agent"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc;->zzIA:Ljava/lang/String;

    :cond_1
    const-string v0, "User agent is updated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    return-void
.end method

.method public zzac(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqc;->zzaa(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->zzIA:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/google/android/gms/internal/zzww;
.super Lcom/google/android/gms/cast/framework/SessionProvider;


# instance fields
.field private final zzaqL:Lcom/google/android/gms/internal/zzxe;

.field private final zzaqa:Lcom/google/android/gms/cast/framework/CastOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzxe;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzww;->zza(Lcom/google/android/gms/cast/framework/CastOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/SessionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzww;->zzaqa:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzww;->zzaqL:Lcom/google/android/gms/internal/zzxe;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/cast/framework/CastOptions;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;
    .locals 10

    new-instance v0, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzww;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzww;->getCategory()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzww;->zzaqa:Lcom/google/android/gms/cast/framework/CastOptions;

    sget-object v5, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    new-instance v6, Lcom/google/android/gms/internal/zzwx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzwx;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzxj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzww;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v8, p0, Lcom/google/android/gms/internal/zzww;->zzaqa:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzww;->zzaqL:Lcom/google/android/gms/internal/zzxe;

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/gms/internal/zzxj;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzxe;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/framework/CastSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$CastApi;Lcom/google/android/gms/internal/zzwx;Lcom/google/android/gms/internal/zzxj;)V

    return-object v0
.end method

.method public isSessionRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzww;->zzaqa:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getResumeSavedSession()Z

    move-result v0

    return v0
.end method

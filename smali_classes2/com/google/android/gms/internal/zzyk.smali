.class public final Lcom/google/android/gms/internal/zzyk;
.super Ljava/lang/Object;


# instance fields
.field private final zzaoJ:I

.field private final zzavM:Lorg/json/JSONObject;

.field private final zzavw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyk;->zzavw:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzyk;->zzaoJ:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyk;->zzavM:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "playerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "playerData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzyk;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzyk;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzyk;

    iget v1, p0, Lcom/google/android/gms/internal/zzyk;->zzaoJ:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzyk;->getPlayerState()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyk;->zzavw:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzyk;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyk;->zzavM:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzyk;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/zzq;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPlayerData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzavM:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->zzavw:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzyk;->zzaoJ:I

    return v0
.end method

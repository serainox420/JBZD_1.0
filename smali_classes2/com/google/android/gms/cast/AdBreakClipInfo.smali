.class public Lcom/google/android/gms/cast/AdBreakClipInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzGV:Ljava/lang/String;

.field private final zzamJ:Ljava/lang/String;

.field private final zzamK:J

.field private final zzamL:Ljava/lang/String;

.field private final zzamM:Ljava/lang/String;

.field private zzamN:Ljava/lang/String;

.field private zzamO:Lorg/json/JSONObject;

.field private final zzzq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakClipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzGV:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamJ:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamK:J

    iput-object p5, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzzq:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamL:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamM:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamO:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBreakClipInfo"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Error creating AdBreakClipInfo: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamO:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamO:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v4

    const-string v1, "clickThroughUrl"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "contentUrl"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "mimeType"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "title"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "customData"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/cast/AdBreakClipInfo;

    if-nez v9, :cond_2

    move-object v9, v0

    :goto_1
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AdBreakClipInfo"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Error while creating an AdBreakClipInfo from JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/AdBreakClipInfo;

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzGV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzGV:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamJ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamK:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamK:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzzq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzzq:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamM:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamM:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzzq:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamO:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamK:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamL:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamJ:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzGV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamK:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzzq:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zza;->zza(Lcom/google/android/gms/cast/AdBreakClipInfo;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzsf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzamN:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFERED:I = 0x1

.field public static final STREAM_TYPE_INVALID:I = -0x1

.field public static final STREAM_TYPE_LIVE:I = 0x2

.field public static final STREAM_TYPE_NONE:I = 0x0

.field public static final UNKNOWN_DURATION:J = -0x1L


# instance fields
.field zzamN:Ljava/lang/String;

.field private zzamO:Lorg/json/JSONObject;

.field private final zzaoh:Ljava/lang/String;

.field private zzaoi:I

.field private zzaoj:Ljava/lang/String;

.field private zzaok:Lcom/google/android/gms/cast/MediaMetadata;

.field private zzaol:J

.field private zzaom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

.field private zzaoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzaop:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    iput-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    iput-object p7, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    iput-object p9, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamN:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v1, "contentId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v5, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const-string v1, "streamType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    :goto_0
    const-string v1, "contentType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "metadataType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzn(Lorg/json/JSONObject;)V

    :cond_0
    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    :cond_1
    const-string v1, "tracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    const-string v1, "tracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/cast/MediaTrack;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaTrack;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "BUFFERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    goto/16 :goto_0

    :cond_3
    const-string v2, "LIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    goto/16 :goto_0

    :cond_4
    iput v3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    goto/16 :goto_0

    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    :cond_6
    const-string v0, "textTrackStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "textTrackStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-direct {v1}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzn(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaInfo;->zzm(Lorg/json/JSONObject;)V

    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    return-void

    :cond_7
    iput-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    goto :goto_2
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaInfo;->zzsx()V

    return-void
.end method

.method private zzsx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a valid stream type must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/google/android/gms/common/util/zzq;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    iget-wide v6, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public getAdBreakClips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdBreaks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMediaTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    return-object v0
.end method

.method public getStreamDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    return-wide v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    return v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method setContentType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    return-void
.end method

.method setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    return-void
.end method

.method setStreamType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid stream type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    return-void
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "contentId"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoh:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoi:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "NONE"

    :goto_0
    const-string v2, "streamType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "contentType"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoj:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    if-eqz v0, :cond_1

    const-string v0, "metadata"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const-string v0, "duration"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    :goto_3
    return-object v1

    :pswitch_0
    const-string v0, "BUFFERED"

    goto :goto_0

    :pswitch_1
    const-string v0, "LIVE"

    goto :goto_0

    :cond_3
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v0, "tracks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    if-eqz v0, :cond_6

    const-string v0, "textTrackStyle"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaon:Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v0, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamN:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzi;->zza(Lcom/google/android/gms/cast/MediaInfo;Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzamO:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzA(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    return-void
.end method

.method zzC(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaol:J

    return-void
.end method

.method zza(Lcom/google/android/gms/cast/MediaMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaok:Lcom/google/android/gms/cast/MediaMetadata;

    return-void
.end method

.method zzm(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "breaks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "breaks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const-string v0, "breakClips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "breakClips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/cast/AdBreakClipInfo;->zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaop:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method zzz(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzaom:Ljava/util/List;

    return-void
.end method

.class public Lcom/google/android/gms/cast/AdBreakInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzGV:Ljava/lang/String;

.field private final zzamK:J

.field private final zzamP:J

.field private final zzamQ:Z

.field private zzamR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZ[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    iput-object p3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    iput-boolean p6, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    iput-object p7, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    return-void
.end method

.method static zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "position"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "position"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v1

    const-string v0, "isWatched"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v4

    const-string v0, "breakClipIds"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    move v0, v9

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_4

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v7, v8

    :cond_4
    new-instance v0, Lcom/google/android/gms/cast/AdBreakInfo;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdBreakInfo"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Error while creating an AdBreakInfo from JSON: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_0
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
    instance-of v2, p1, Lcom/google/android/gms/cast/AdBreakInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/AdBreakInfo;

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBreakClipIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackPositionInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isWatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzb;->zza(Lcom/google/android/gms/cast/AdBreakInfo;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/wearable/internal/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/wearable/zzd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mId:I

.field private final zzRg:Ljava/lang/String;

.field private final zzaZc:Ljava/lang/String;

.field private final zzakb:Ljava/lang/String;

.field private final zzamJ:Ljava/lang/String;

.field private final zzaoc:Ljava/lang/String;

.field private final zzbTD:Ljava/lang/String;

.field private final zzbTE:B

.field private final zzbTF:B

.field private final zzbTG:B

.field private final zzbTH:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBBLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    iput-byte p8, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    iput-byte p9, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    iput-byte p10, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    iput-byte p11, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    iput-object p12, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzk;

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    iget v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->mId:I

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzamJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzakb:Ljava/lang/String;

    iget-byte v7, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    iget-byte v8, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    iget-byte v9, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    iget-byte v10, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    iget-object v11, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzRg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0xd3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "AncsNotificationParcelable{, id="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", appId=\'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzl;->zza(Lcom/google/android/gms/wearable/internal/zzk;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzEv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaZc:Ljava/lang/String;

    return-object v0
.end method

.method public zzUm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTD:Ljava/lang/String;

    return-object v0
.end method

.method public zzUn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzaoc:Ljava/lang/String;

    return-object v0
.end method

.method public zzUo()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTE:B

    return v0
.end method

.method public zzUp()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTF:B

    return v0
.end method

.method public zzUq()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTG:B

    return v0
.end method

.method public zzUr()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->zzbTH:B

    return v0
.end method

.method public zzke()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzk;->mAppId:Ljava/lang/String;

    return-object v0
.end method

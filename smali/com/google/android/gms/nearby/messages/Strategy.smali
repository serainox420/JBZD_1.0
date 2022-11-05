.class public Lcom/google/android/gms/nearby/messages/Strategy;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    }
.end annotation


# static fields
.field public static final BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

.field public static final DISCOVERY_MODE_BROADCAST:I = 0x1

.field public static final DISCOVERY_MODE_DEFAULT:I = 0x3

.field public static final DISCOVERY_MODE_SCAN:I = 0x2

.field public static final DISTANCE_TYPE_DEFAULT:I = 0x0

.field public static final DISTANCE_TYPE_EARSHOT:I = 0x1

.field public static final TTL_SECONDS_DEFAULT:I = 0x12c

.field public static final TTL_SECONDS_INFINITE:I = 0x7fffffff

.field public static final TTL_SECONDS_MAX:I = 0x15180

.field public static final zzbzP:Lcom/google/android/gms/nearby/messages/Strategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbzQ:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzbzR:I

.field final zzbzS:I

.field final zzbzT:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzbzU:I

.field final zzbzV:I

.field private final zzbzW:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->build()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzmB(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->setTtlSeconds(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->build()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->BLE_ONLY:Lcom/google/android/gms/nearby/messages/Strategy;

    sput-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzP:Lcom/google/android/gms/nearby/messages/Strategy;

    return-void
.end method

.method constructor <init>(IIIIZIII)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzQ:I

    if-nez p2, :cond_0

    iput p7, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    :goto_0
    iput p4, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzS:I

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzT:Z

    if-eqz p5, :cond_1

    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    :goto_1
    iput p8, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzW:I

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    goto :goto_0

    :cond_1
    iput p3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    packed-switch p6, :pswitch_data_1

    :pswitch_2
    iput p6, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    goto :goto_1

    :pswitch_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static zzmA(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "DEFAULT"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    const-string v1, "BROADCAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    const-string v1, "SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzmx(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DEFAULT"

    goto :goto_0

    :pswitch_1
    const-string v0, "ALWAYS_ON"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static zzmy(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DEFAULT"

    goto :goto_0

    :pswitch_1
    const-string v0, "EARSHOT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static zzmz(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "DEFAULT"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_1

    const-string v1, "ULTRASOUND"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    const-string v1, "BLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/Strategy;

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaiI:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzaiI:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzS:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzS:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzaiI:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzR:I

    iget v1, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzS:I

    invoke-static {v1}, Lcom/google/android/gms/nearby/messages/Strategy;->zzmy(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    invoke-static {v2}, Lcom/google/android/gms/nearby/messages/Strategy;->zzmz(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    invoke-static {v3}, Lcom/google/android/gms/nearby/messages/Strategy;->zzmA(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzW:I

    invoke-static {v4}, Lcom/google/android/gms/nearby/messages/Strategy;->zzmx(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x66

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Strategy{ttlSeconds="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", distanceType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discoveryMedium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discoveryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundScanMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zzd;->zza(Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzU:I

    return v0
.end method

.method public zzOK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzW:I

    return v0
.end method

.method public zzOc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy;->zzbzV:I

    return v0
.end method

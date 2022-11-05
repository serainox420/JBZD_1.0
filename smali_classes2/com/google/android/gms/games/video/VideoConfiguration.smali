.class public final Lcom/google/android/gms/games/video/VideoConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODE_FILE:I = 0x0

.field public static final CAPTURE_MODE_STREAM:I = 0x1

.field public static final CAPTURE_MODE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_CAPTURE_MODE:I = 0x2

.field public static final NUM_QUALITY_LEVEL:I = 0x4

.field public static final QUALITY_LEVEL_FULLHD:I = 0x3

.field public static final QUALITY_LEVEL_HD:I = 0x1

.field public static final QUALITY_LEVEL_SD:I = 0x0

.field public static final QUALITY_LEVEL_UNKNOWN:I = -0x1

.field public static final QUALITY_LEVEL_XHD:I = 0x2


# instance fields
.field private final zzbfQ:I

.field private final zzbfX:I

.field private final zzbfY:Ljava/lang/String;

.field private final zzbfZ:Ljava/lang/String;

.field private final zzbga:Ljava/lang/String;

.field private final zzbgb:Ljava/lang/String;

.field private final zzbgc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoConfigurationCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/VideoConfigurationCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1, v2}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p2, v2}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfX:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfQ:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbgc:Z

    if-ne p2, v1, :cond_0

    iput-object p4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfY:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbga:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbgb:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    if-nez p4, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Stream key should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-nez p3, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Stream url should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-nez p5, :cond_3

    move v0, v1

    :goto_3
    const-string v3, "Stream title should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-nez p6, :cond_4

    :goto_4
    const-string v0, "Stream description should be null when not streaming"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfZ:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfY:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbga:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbgb:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public static isValidCaptureMode(IZ)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p1, 0x0

    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidQualityLevel(IZ)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p1, 0x0

    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCaptureMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfQ:I

    return v0
.end method

.method public getQualityLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfX:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfY:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/video/VideoConfigurationCreator;->zza(Lcom/google/android/gms/games/video/VideoConfiguration;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbfZ:Ljava/lang/String;

    return-object v0
.end method

.method public zzGG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbga:Ljava/lang/String;

    return-object v0
.end method

.method public zzGH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbgb:Ljava/lang/String;

    return-object v0
.end method

.method public zzGI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzbgc:Z

    return v0
.end method

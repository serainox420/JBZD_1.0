.class public Lcom/google/android/gms/cast/framework/CastOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaog:Lcom/google/android/gms/cast/LaunchOptions;

.field private final zzaqc:Ljava/lang/String;

.field private final zzaqd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaqe:Z

.field private final zzaqf:Z

.field private final zzaqg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

.field private final zzaqh:Z

.field private final zzaqi:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZD)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Z",
            "Lcom/google/android/gms/cast/framework/media/CastMediaOptions;",
            "ZD)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqc:Ljava/lang/String;

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqd:Ljava/util/List;

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqd:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqe:Z

    if-nez p4, :cond_2

    new-instance p4, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p4}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    :cond_2
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaog:Lcom/google/android/gms/cast/LaunchOptions;

    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqf:Z

    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iput-boolean p7, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqh:Z

    iput-wide p8, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqi:D

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    return-object v0
.end method

.method public getEnableReconnectionService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqh:Z

    return v0
.end method

.method public getLaunchOptions()Lcom/google/android/gms/cast/LaunchOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaog:Lcom/google/android/gms/cast/LaunchOptions;

    return-object v0
.end method

.method public getReceiverApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqc:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeSavedSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqf:Z

    return v0
.end method

.method public getStopReceiverApplicationWhenEndingSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqe:Z

    return v0
.end method

.method public getSupportedNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqd:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeDeltaBeforeIceCreamSandwich()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->zzaqi:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/zzb;->zza(Lcom/google/android/gms/cast/framework/CastOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzarL:Ljava/lang/String;

.field private zzarM:Ljava/lang/String;

.field private zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/gms/cast/framework/media/MediaIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarL:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarM:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->zztq()Lcom/google/android/gms/cast/framework/media/zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public setExpandedControllerActivityClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarM:Ljava/lang/String;

    return-object p0
.end method

.method public setImagePicker(Lcom/google/android/gms/cast/framework/media/ImagePicker;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    return-object p0
.end method

.method public setMediaIntentReceiverClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarL:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationOptions(Lcom/google/android/gms/cast/framework/media/NotificationOptions;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object p0
.end method

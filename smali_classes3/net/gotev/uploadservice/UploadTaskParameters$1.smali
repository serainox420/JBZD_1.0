.class final Lnet/gotev/uploadservice/UploadTaskParameters$1;
.super Ljava/lang/Object;
.source "UploadTaskParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/UploadTaskParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/gotev/uploadservice/UploadTaskParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/UploadTaskParameters;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lnet/gotev/uploadservice/UploadTaskParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/gotev/uploadservice/UploadTaskParameters;-><init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/UploadTaskParameters$1;)V

    return-object v0
.end method

.method public a(I)[Lnet/gotev/uploadservice/UploadTaskParameters;
    .locals 1

    .prologue
    .line 43
    new-array v0, p1, [Lnet/gotev/uploadservice/UploadTaskParameters;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadTaskParameters$1;->a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/UploadTaskParameters;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadTaskParameters$1;->a(I)[Lnet/gotev/uploadservice/UploadTaskParameters;

    move-result-object v0

    return-object v0
.end method

.class final Lnet/gotev/uploadservice/ServerResponse$1;
.super Ljava/lang/Object;
.source "ServerResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/ServerResponse;
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
        "Lnet/gotev/uploadservice/ServerResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/ServerResponse;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lnet/gotev/uploadservice/ServerResponse;

    invoke-direct {v0, p1}, Lnet/gotev/uploadservice/ServerResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lnet/gotev/uploadservice/ServerResponse;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lnet/gotev/uploadservice/ServerResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/ServerResponse$1;->a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/ServerResponse$1;->a(I)[Lnet/gotev/uploadservice/ServerResponse;

    move-result-object v0

    return-object v0
.end method

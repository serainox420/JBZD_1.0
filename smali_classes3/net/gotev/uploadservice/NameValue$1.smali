.class final Lnet/gotev/uploadservice/NameValue$1;
.super Ljava/lang/Object;
.source "NameValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/NameValue;
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
        "Lnet/gotev/uploadservice/NameValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/NameValue;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lnet/gotev/uploadservice/NameValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/gotev/uploadservice/NameValue;-><init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/NameValue$1;)V

    return-object v0
.end method

.method public a(I)[Lnet/gotev/uploadservice/NameValue;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lnet/gotev/uploadservice/NameValue;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/NameValue$1;->a(Landroid/os/Parcel;)Lnet/gotev/uploadservice/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/NameValue$1;->a(I)[Lnet/gotev/uploadservice/NameValue;

    move-result-object v0

    return-object v0
.end method

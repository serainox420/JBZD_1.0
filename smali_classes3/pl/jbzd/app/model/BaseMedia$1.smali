.class final Lpl/jbzd/app/model/BaseMedia$1;
.super Ljava/lang/Object;
.source "BaseMedia.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/model/BaseMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia$1;->createFromParcel(Landroid/os/Parcel;)Lpl/jbzd/app/model/BaseMedia;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lpl/jbzd/app/model/BaseMedia;
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-direct {v0, p1}, Lpl/jbzd/app/model/BaseMedia;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia$1;->newArray(I)[Lpl/jbzd/app/model/BaseMedia;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lpl/jbzd/app/model/BaseMedia;
    .locals 1

    .prologue
    .line 407
    new-array v0, p1, [Lpl/jbzd/app/model/BaseMedia;

    return-object v0
.end method

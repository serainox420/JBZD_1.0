.class final Lpl/jbzd/app/view/menu/model/Item$1;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/menu/model/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lpl/jbzd/app/view/menu/model/Item;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lpl/jbzd/app/view/menu/model/Item;

    invoke-direct {v0, p1}, Lpl/jbzd/app/view/menu/model/Item;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lpl/jbzd/app/view/menu/model/Item;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lpl/jbzd/app/view/menu/model/Item;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/menu/model/Item$1;->a(Landroid/os/Parcel;)Lpl/jbzd/app/view/menu/model/Item;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/menu/model/Item$1;->a(I)[Lpl/jbzd/app/view/menu/model/Item;

    move-result-object v0

    return-object v0
.end method

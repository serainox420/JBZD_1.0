.class final Lcom/inmobi/re/controller/JSController$Dimensions$1;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController$Dimensions;
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
        "Lcom/inmobi/re/controller/JSController$Dimensions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/inmobi/re/controller/JSController$Dimensions;
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/inmobi/re/controller/JSController$Dimensions;

    invoke-direct {v0, p1}, Lcom/inmobi/re/controller/JSController$Dimensions;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/inmobi/re/controller/JSController$Dimensions;
    .locals 1

    .prologue
    .line 304
    new-array v0, p1, [Lcom/inmobi/re/controller/JSController$Dimensions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/JSController$Dimensions$1;->a(Landroid/os/Parcel;)Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/JSController$Dimensions$1;->a(I)[Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v0

    return-object v0
.end method

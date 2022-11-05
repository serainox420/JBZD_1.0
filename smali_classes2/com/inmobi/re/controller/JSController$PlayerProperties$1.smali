.class final Lcom/inmobi/re/controller/JSController$PlayerProperties$1;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController$PlayerProperties;
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
        "Lcom/inmobi/re/controller/JSController$PlayerProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v0, p1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/inmobi/re/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/JSController$PlayerProperties$1;->a(Landroid/os/Parcel;)Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/JSController$PlayerProperties$1;->a(I)[Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    return-object v0
.end method

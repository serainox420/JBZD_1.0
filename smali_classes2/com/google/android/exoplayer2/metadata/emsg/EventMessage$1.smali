.class final Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
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
        "Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 1

    .prologue
    .line 137
    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;->a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;->a(I)[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    return-object v0
.end method

.class final Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "LinePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;
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
        "Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;
    .locals 1

    .prologue
    .line 440
    new-array v0, p1, [Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState$1;->a(I)[Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

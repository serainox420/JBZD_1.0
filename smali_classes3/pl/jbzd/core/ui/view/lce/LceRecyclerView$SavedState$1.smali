.class final Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "LceRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;
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
        "Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Lpl/jbzd/core/ui/view/lce/LceRecyclerView$1;)V

    return-object v0
.end method

.method public a(I)[Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;
    .locals 1

    .prologue
    .line 217
    new-array v0, p1, [Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState$1;->a(Landroid/os/Parcel;)Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState$1;->a(I)[Lpl/jbzd/core/ui/view/lce/LceRecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

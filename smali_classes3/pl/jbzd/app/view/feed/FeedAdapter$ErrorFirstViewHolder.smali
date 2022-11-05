.class public Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;
.super Lpl/jbzd/core/b;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorFirstViewHolder"
.end annotation


# instance fields
.field btn:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field txt:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lpl/jbzd/core/b;-><init>(Landroid/view/View;)V

    .line 110
    return-void
.end method

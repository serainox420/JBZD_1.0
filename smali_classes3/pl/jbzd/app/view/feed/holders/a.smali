.class public Lpl/jbzd/app/view/feed/holders/a;
.super Lpl/jbzd/app/view/feed/holders/StandardViewHolder;
.source "GifViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/app/view/feed/holders/StandardViewHolder",
        "<",
        "Lpl/jbzd/app/view/feed/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lpl/jbzd/app/view/feed/a/a;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lpl/jbzd/app/view/feed/a/c;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/feed/holders/a;->a(Lpl/jbzd/app/view/feed/a/c;)V

    return-void
.end method

.method public a(Lpl/jbzd/app/view/feed/a/c;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->a(Lpl/jbzd/app/view/feed/a/a;)V

    .line 19
    return-void
.end method

.class Lpl/jbzd/app/ui/view/TagGroup$a;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/TagGroup;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/TagGroup;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    check-cast p1, Lpl/jbzd/app/ui/view/TagGroup$d;

    .line 608
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(Lpl/jbzd/app/ui/view/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 609
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Lpl/jbzd/app/ui/view/TagGroup$d;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 611
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup$d;->b(Lpl/jbzd/app/ui/view/TagGroup$d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/ui/view/TagGroup;->a(Lpl/jbzd/app/ui/view/TagGroup$d;)V

    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_3

    .line 624
    invoke-virtual {v0, v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    .line 626
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    goto :goto_0

    .line 630
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->b(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$a;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->b(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$c;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lpl/jbzd/app/ui/view/TagGroup$d$3;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/TagGroup$d;-><init>(Lpl/jbzd/app/ui/view/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/TagGroup;

.field final synthetic b:Lpl/jbzd/app/ui/view/TagGroup$d;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    const/16 v2, 0x43

    if-ne p2, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 761
    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 762
    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v2, v2, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/TagGroup;->getLastNormalTagView()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v2

    .line 763
    if-eqz v2, :cond_3

    .line 764
    invoke-static {v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->b(Lpl/jbzd/app/ui/view/TagGroup$d;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v1, v2}, Lpl/jbzd/app/ui/view/TagGroup;->removeView(Landroid/view/View;)V

    .line 766
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->i(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->i(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$b;

    move-result-object v1

    iget-object v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v3, v3, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lpl/jbzd/app/ui/view/TagGroup$b;->b(Lpl/jbzd/app/ui/view/TagGroup;Ljava/lang/String;)V

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    iget-object v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d$3;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v3, v3, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v3}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v3

    .line 771
    if-eqz v3, :cond_2

    .line 772
    invoke-virtual {v3, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    .line 774
    :cond_2
    invoke-virtual {v2, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 780
    goto :goto_0
.end method

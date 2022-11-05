.class Lpl/jbzd/app/ui/view/TagGroup$d$2;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 734
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 737
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 738
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    .line 739
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 740
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->a()V

    .line 744
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->i(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->i(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpl/jbzd/app/ui/view/TagGroup$b;->a(Lpl/jbzd/app/ui/view/TagGroup;Ljava/lang/String;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$2;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup;->b()V

    .line 749
    :cond_1
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

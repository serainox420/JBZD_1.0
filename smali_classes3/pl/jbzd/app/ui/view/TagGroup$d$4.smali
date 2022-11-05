.class Lpl/jbzd/app/ui/view/TagGroup$d$4;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 785
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$4;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$4;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$4;->b:Lpl/jbzd/app/ui/view/TagGroup$d;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    .line 793
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.class Lpl/jbzd/app/ui/view/TagGroup$d$1;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic b:I

.field final synthetic c:Lpl/jbzd/app/ui/view/TagGroup$d;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;I)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d$1;->c:Lpl/jbzd/app/ui/view/TagGroup$d;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/TagGroup$d$1;->a:Lpl/jbzd/app/ui/view/TagGroup;

    iput p3, p0, Lpl/jbzd/app/ui/view/TagGroup$d$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 726
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d$1;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

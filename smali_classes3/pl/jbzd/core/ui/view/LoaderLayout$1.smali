.class Lpl/jbzd/core/ui/view/LoaderLayout$1;
.super Ljava/lang/Object;
.source "LoaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/view/LoaderLayout;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lpl/jbzd/core/ui/view/LoaderLayout;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/view/LoaderLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    iput-object p2, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    iget-object v0, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    iget-object v0, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/LoaderLayout$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method

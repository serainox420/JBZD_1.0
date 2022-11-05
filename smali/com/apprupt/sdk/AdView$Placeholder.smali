.class Lcom/apprupt/sdk/AdView$Placeholder;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InlineAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Placeholder"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;

.field private final b:Lcom/apprupt/sdk/AdView$PlaceholderView;

.field private c:Lcom/apprupt/sdk/mediation/Size;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 4

    .prologue
    .line 753
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$Placeholder;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Lcom/apprupt/sdk/AdView$PlaceholderView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$Placeholder;->a:Lcom/apprupt/sdk/AdView;

    iget-object v2, p0, Lcom/apprupt/sdk/AdView$Placeholder;->a:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v2}, Lcom/apprupt/sdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/AdView$PlaceholderView;-><init>(Lcom/apprupt/sdk/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/AdView$Placeholder;->b:Lcom/apprupt/sdk/AdView$PlaceholderView;

    .line 754
    new-instance v0, Lcom/apprupt/sdk/mediation/Size;

    const/4 v1, 0x4

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/AdView$Placeholder;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 755
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$1;)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView$Placeholder;-><init>(Lcom/apprupt/sdk/AdView;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView$Placeholder;I)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView$Placeholder;->b(I)V

    return-void
.end method

.method private a(Lcom/apprupt/sdk/mediation/Size;)V
    .locals 1

    .prologue
    .line 768
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$Placeholder;->c:Lcom/apprupt/sdk/mediation/Size;

    .line 769
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$Placeholder;->b:Lcom/apprupt/sdk/AdView$PlaceholderView;

    iput-object p1, v0, Lcom/apprupt/sdk/AdView$PlaceholderView;->a:Lcom/apprupt/sdk/mediation/Size;

    .line 777
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 764
    new-instance v0, Lcom/apprupt/sdk/mediation/Size;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$Placeholder;->c:Lcom/apprupt/sdk/mediation/Size;

    iget v1, v1, Lcom/apprupt/sdk/mediation/Size;->a:I

    iget-object v2, p0, Lcom/apprupt/sdk/AdView$Placeholder;->c:Lcom/apprupt/sdk/mediation/Size;

    iget v2, v2, Lcom/apprupt/sdk/mediation/Size;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/AdView$Placeholder;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 765
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public a(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 786
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 787
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$Placeholder;->b:Lcom/apprupt/sdk/AdView$PlaceholderView;

    return-object v0
.end method

.method public d()Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/apprupt/sdk/mediation/Adapter;
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    return v0
.end method

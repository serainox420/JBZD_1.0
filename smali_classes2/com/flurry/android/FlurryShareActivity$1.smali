.class final Lcom/flurry/android/FlurryShareActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ho;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryShareActivity;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryShareActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryShareActivity;->finish()V

    .line 142
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 130
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryShareActivity;->a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryShareActivity;->setContentView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity$1;->a:Lcom/flurry/android/FlurryShareActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/android/FlurryShareActivity;->a:Z

    .line 147
    return-void
.end method

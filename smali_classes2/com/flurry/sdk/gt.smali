.class public Lcom/flurry/sdk/gt;
.super Lcom/flurry/sdk/gv;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/flurry/sdk/gv$b;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/gt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gv$b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/gv$b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gv;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/flurry/sdk/gt;->d:I

    .line 27
    iput v0, p0, Lcom/flurry/sdk/gt;->e:I

    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/gt;->f:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/flurry/sdk/gt;->c:Lcom/flurry/sdk/gv$b;

    .line 36
    iput-object p3, p0, Lcom/flurry/sdk/gt;->g:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/flurry/sdk/gt;->d:I

    .line 83
    iput v0, p0, Lcom/flurry/sdk/gt;->e:I

    .line 84
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 66
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gt;->show(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gt;->show(I)V

    goto :goto_0

    .line 72
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->hide()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->setAnchorView(Landroid/view/View;)V

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flurry/sdk/gt;->d:I

    iget v2, p0, Lcom/flurry/sdk/gt;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->removeAllViews()V

    .line 1098
    iget-object v1, p0, Lcom/flurry/sdk/gt;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/gt;->c:Lcom/flurry/sdk/gv$b;

    .line 1104
    if-eqz v1, :cond_0

    .line 1108
    iput-object v2, p0, Lcom/flurry/sdk/gt;->c:Lcom/flurry/sdk/gv$b;

    .line 1111
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gt;->b:Landroid/widget/RelativeLayout;

    .line 1112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/flurry/sdk/gt;->d:I

    iget v3, p0, Lcom/flurry/sdk/gt;->e:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1116
    iget-object v2, p0, Lcom/flurry/sdk/gt;->b:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1117
    iget-object v2, p0, Lcom/flurry/sdk/gt;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gt;->b:Landroid/widget/RelativeLayout;

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gv;->show(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->show(I)V

    .line 59
    :cond_0
    return-void
.end method

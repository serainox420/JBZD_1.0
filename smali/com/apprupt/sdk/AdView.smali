.class public Lcom/apprupt/sdk/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/AdView$Placeholder;,
        Lcom/apprupt/sdk/AdView$PlaceholderView;,
        Lcom/apprupt/sdk/AdView$HwaStatus;,
        Lcom/apprupt/sdk/AdView$Dimensions;,
        Lcom/apprupt/sdk/AdView$Listener;
    }
.end annotation


# static fields
.field private static volatile y:I


# instance fields
.field private final A:Lcom/apprupt/sdk/Logger$log;

.field private final B:Lcom/apprupt/sdk/Timeout;

.field private volatile a:Z

.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private c:Lcom/apprupt/sdk/CvMediator;

.field private d:Z

.field private e:I

.field private f:Lcom/apprupt/sdk/AdView$HwaStatus;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/apprupt/sdk/CvAnimationType;

.field private l:Z

.field private m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

.field private n:Lcom/apprupt/sdk/AdView$Listener;

.field private o:Ljava/util/Timer;

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Lcom/apprupt/sdk/AdView$Placeholder;

.field private t:Ljava/util/Timer;

.field private u:Z

.field private final v:[I

.field private w:Z

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/AdView;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/apprupt/sdk/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/apprupt/sdk/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/apprupt/sdk/CvContext;

    invoke-direct {v0, p1}, Lcom/apprupt/sdk/CvContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v3, p0, Lcom/apprupt/sdk/AdView;->a:Z

    .line 57
    const-string v0, "AdView"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->b:Lcom/apprupt/sdk/Logger$log;

    .line 58
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    .line 59
    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->d:Z

    .line 60
    const/16 v0, 0x4b

    iput v0, p0, Lcom/apprupt/sdk/AdView;->e:I

    .line 61
    sget-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->a:Lcom/apprupt/sdk/AdView$HwaStatus;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->f:Lcom/apprupt/sdk/AdView$HwaStatus;

    .line 62
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->h:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->i:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/apprupt/sdk/AdView;->j:I

    .line 66
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    .line 67
    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->l:Z

    .line 68
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 69
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    .line 70
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->o:Ljava/util/Timer;

    .line 71
    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->p:Z

    .line 72
    iput-boolean v3, p0, Lcom/apprupt/sdk/AdView;->q:Z

    .line 73
    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->r:Z

    .line 76
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    .line 77
    iput-boolean v3, p0, Lcom/apprupt/sdk/AdView;->u:Z

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->v:[I

    .line 79
    iput-boolean v3, p0, Lcom/apprupt/sdk/AdView;->w:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->x:Ljava/util/ArrayList;

    .line 83
    sget v0, Lcom/apprupt/sdk/AdView;->y:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/apprupt/sdk/AdView;->y:I

    iput v0, p0, Lcom/apprupt/sdk/AdView;->z:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lifecycle.AdView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apprupt/sdk/AdView;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->A:Lcom/apprupt/sdk/Logger$log;

    .line 106
    new-instance v0, Lcom/apprupt/sdk/Timeout;

    new-instance v1, Lcom/apprupt/sdk/AdView$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$1;-><init>(Lcom/apprupt/sdk/AdView;)V

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/Timeout;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->B:Lcom/apprupt/sdk/Timeout;

    .line 123
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->c()V

    .line 125
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iput-object v2, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    .line 127
    invoke-direct {p0, p2}, Lcom/apprupt/sdk/AdView;->a(Landroid/util/AttributeSet;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-direct {p0, p2}, Lcom/apprupt/sdk/AdView;->setAttributes(Landroid/util/AttributeSet;)V

    .line 133
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/AdView;->setDescendantFocusability(I)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/apprupt/sdk/AdView;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/apprupt/sdk/AdView;->setFocusableInTouchMode(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/apprupt/sdk/AdView;->setBackgroundColor(I)V

    .line 138
    new-instance v0, Lcom/apprupt/sdk/AdView$Placeholder;

    invoke-direct {v0, p0, v2}, Lcom/apprupt/sdk/AdView$Placeholder;-><init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$1;)V

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    .line 139
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    iget v1, p0, Lcom/apprupt/sdk/AdView;->e:I

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView$Placeholder;->a(Lcom/apprupt/sdk/AdView$Placeholder;I)V

    .line 140
    if-eqz p4, :cond_2

    .line 141
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 142
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/AdView;->addView(Landroid/view/View;)V

    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->a()V

    goto :goto_0

    .line 78
    :array_0
    .array-data 4
        -0x270f
        -0x270f
    .end array-data
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$Listener;)Lcom/apprupt/sdk/AdView$Listener;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/CvMediator;)Lcom/apprupt/sdk/CvMediator;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x2

    .line 192
    const-string v1, "http://schemas.android.com/apk/res-auto"

    .line 194
    const-string v0, "placeholder_view_visible"

    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->d:Z

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "preview_in_edit_mode"

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "background_color"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 199
    const-string v0, "yellow"

    .line 201
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/AdView;->setBackgroundColor(I)V

    .line 203
    const-string v0, "placeholder_size"

    iget v2, p0, Lcom/apprupt/sdk/AdView;->e:I

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v0

    .line 204
    const-string v0, "ad_space_id"

    invoke-interface {p1, v1, v0, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 206
    if-lez v0, :cond_3

    const-string v1, "AdView #%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 210
    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 211
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    .line 212
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x43a00000    # 320.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v5, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p0, v3}, Lcom/apprupt/sdk/AdView;->addView(Landroid/view/View;)V

    .line 220
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 225
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 226
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 206
    :cond_3
    const-string v0, "AdView"

    goto :goto_1
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->b()V

    .line 534
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/AdView$7;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/AdView$7;-><init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    .line 556
    iget-boolean v1, p0, Lcom/apprupt/sdk/AdView;->w:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/apprupt/sdk/AdView;->r:Z

    if-nez v1, :cond_2

    .line 557
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/apprupt/sdk/AdView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Lcom/apprupt/sdk/AdView$12;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/AdView$12;-><init>(Lcom/apprupt/sdk/AdView;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 696
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    invoke-interface {v0, p1, p0}, Lcom/apprupt/sdk/AdView$Listener;->onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V

    .line 529
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    .line 530
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/AdView;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/apprupt/sdk/AdView;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->o:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    return-void
.end method

.method private b(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 564
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->getAnimationType()Lcom/apprupt/sdk/CvAnimationType;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAnimationType;->b()Landroid/view/animation/Animation;

    move-result-object v1

    .line 567
    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v2}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v2

    .line 568
    iget-object v3, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 569
    if-eqz v1, :cond_1

    .line 570
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/apprupt/sdk/AdView$8;

    invoke-direct {v5, p0, v2, v3}, Lcom/apprupt/sdk/AdView$8;-><init>(Lcom/apprupt/sdk/AdView;Landroid/view/View;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    .line 580
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    .line 570
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 582
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 593
    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAnimationType;->a()Landroid/view/animation/Animation;

    move-result-object v0

    .line 594
    invoke-interface {p1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v1

    .line 598
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 599
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 600
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->addView(Landroid/view/View;)V

    .line 602
    if-nez v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->i()V

    .line 614
    :goto_1
    return-void

    .line 585
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/AdView;->removeView(Landroid/view/View;)V

    .line 586
    invoke-interface {v3}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    goto :goto_0

    .line 605
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/apprupt/sdk/AdView$9;

    invoke-direct {v3, p0}, Lcom/apprupt/sdk/AdView$9;-><init>(Lcom/apprupt/sdk/AdView;)V

    .line 610
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    .line 605
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 612
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/apprupt/sdk/AdView;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/apprupt/sdk/AdView;->a:Z

    return p1
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apprupt/sdk/AdView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    .line 270
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->e()V

    return-void
.end method

.method static synthetic e(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->t:Ljava/util/Timer;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    .line 314
    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->u:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 315
    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v1

    .line 316
    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v0

    .line 317
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getWidth()I

    move-result v2

    .line 318
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getHeight()I

    move-result v3

    .line 319
    iget-object v4, p0, Lcom/apprupt/sdk/AdView;->v:[I

    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/AdView;->getLocationOnScreen([I)V

    .line 320
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 321
    new-instance v4, Landroid/graphics/Rect;

    sget-object v5, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sget-object v6, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v7, v7, v0

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v1

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v1

    sget-object v3, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/apprupt/sdk/AdView;->v:[I

    aget v2, v2, v0

    sget-object v3, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_2

    .line 325
    :cond_1
    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 330
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->w:Z

    if-eq v2, v0, :cond_5

    .line 331
    iput-boolean v0, p0, Lcom/apprupt/sdk/AdView;->w:Z

    .line 332
    if-eqz v0, :cond_6

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 335
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 337
    :cond_3
    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->r:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->a()V

    .line 357
    :cond_5
    :goto_2
    return-void

    .line 340
    :cond_6
    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 341
    new-instance v0, Lcom/apprupt/sdk/AdView$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$4;-><init>(Lcom/apprupt/sdk/AdView;)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/AdView;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->f:Lcom/apprupt/sdk/AdView$HwaStatus;

    sget-object v1, Lcom/apprupt/sdk/AdView$HwaStatus;->b:Lcom/apprupt/sdk/AdView$HwaStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    .line 421
    :goto_0
    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->f:Lcom/apprupt/sdk/AdView$HwaStatus;

    sget-object v1, Lcom/apprupt/sdk/AdView$HwaStatus;->c:Lcom/apprupt/sdk/AdView$HwaStatus;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-static {p0}, Lcom/apprupt/sdk/CvViewHelper;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/apprupt/sdk/AdView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Placeholder;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->s:Lcom/apprupt/sdk/AdView$Placeholder;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 618
    new-instance v0, Lcom/apprupt/sdk/AdView$10;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$10;-><init>(Lcom/apprupt/sdk/AdView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 630
    return-void
.end method

.method private getAnimationType()Lcom/apprupt/sdk/CvAnimationType;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->e()Lcom/apprupt/sdk/CvAnimationType;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0
.end method

.method private getContentOptions()Lcom/apprupt/sdk/CvContentOptions;
    .locals 8

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->f()Z

    move-result v6

    .line 426
    new-instance v0, Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getKeywords()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView;->getCategories()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 431
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->b()Lcom/apprupt/sdk/CvAdColony$Wrapper;

    move-result-object v5

    iget-object v7, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvContentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 426
    return-object v0
.end method

.method private getRefreshInterval()I
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/apprupt/sdk/AdView;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 404
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 406
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/apprupt/sdk/AdView;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method static synthetic h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->m:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->getRefreshInterval()I

    move-result v0

    int-to-long v0, v0

    .line 634
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 635
    new-instance v2, Lcom/apprupt/sdk/AdView$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/apprupt/sdk/AdView$11;-><init>(Lcom/apprupt/sdk/AdView;J)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 662
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->c:Lcom/apprupt/sdk/CvMediator;

    .line 666
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->n:Lcom/apprupt/sdk/AdView$Listener;

    invoke-interface {v0, p0}, Lcom/apprupt/sdk/AdView$Listener;->onAdLoaded(Lcom/apprupt/sdk/AdView;)V

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->h()V

    .line 668
    return-void
.end method

.method static synthetic i(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->g()V

    return-void
.end method

.method static synthetic j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->B:Lcom/apprupt/sdk/Timeout;

    return-object v0
.end method

.method static synthetic k(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvContentOptions;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->getContentOptions()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->A:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic m(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->i()V

    return-void
.end method

.method static synthetic n(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->o:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic o(Lcom/apprupt/sdk/AdView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/apprupt/sdk/AdView;->a:Z

    return v0
.end method

.method static synthetic p(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/AdView;->h()V

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    if-eqz p1, :cond_0

    .line 158
    const-string v0, "http://schemas.android.com/apk/res-auto"

    .line 160
    const-string v1, "ad_space_id"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setAdSpaceId(I)V

    .line 161
    const-string v1, "keywords"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setKeywords(Ljava/lang/String;)V

    .line 162
    const-string v1, "categories"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setCategories(Ljava/lang/String;)V

    .line 163
    const-string v1, "placeholder_view_visible"

    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->d:Z

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->d:Z

    .line 164
    const-string v1, "placeholder_size"

    iget v2, p0, Lcom/apprupt/sdk/AdView;->e:I

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setPlaceholderSize(I)V

    .line 165
    const-string v1, "clean_on_disappear"

    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->q:Z

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setCleanOnDisappear(Z)V

    .line 166
    const-string v1, "refresh_interval"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setRefreshInterval(I)V

    .line 167
    const-string v1, "load_immediately"

    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->p:Z

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apprupt/sdk/AdView;->p:Z

    .line 168
    const-string v1, "visibility_tracking"

    iget-boolean v2, p0, Lcom/apprupt/sdk/AdView;->r:Z

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView;->setVisibilityTrackingEnabled(Z)V

    .line 169
    const-string v1, "animation_type"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v1, "fade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->FADE:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "left_right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->LEFT_RIGHT:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0

    .line 178
    :cond_3
    const-string v1, "right_left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->RIGHT_LEFT:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0

    .line 180
    :cond_4
    const-string v1, "top_bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->TOP_BOTTOM:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0

    .line 182
    :cond_5
    const-string v1, "bottom_top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->BOTTOM_TOP:Lcom/apprupt/sdk/CvAnimationType;

    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    goto :goto_0

    .line 185
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 451
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->A:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Load ad"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 452
    new-instance v0, Lcom/apprupt/sdk/AdView$6;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$6;-><init>(Lcom/apprupt/sdk/AdView;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 525
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/AdView;->a(Ljava/lang/Runnable;)V

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/AdView;->a:Z

    .line 673
    return-void
.end method

.method public getAdSpaceId()I
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit p0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    const-string v0, ""

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->h:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v0, ""

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->i:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v0, ""

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 275
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->A:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attached to window"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 276
    new-instance v0, Lcom/apprupt/sdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$2;-><init>(Lcom/apprupt/sdk/AdView;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 295
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 299
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 300
    iget-object v0, p0, Lcom/apprupt/sdk/AdView;->A:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Detached from window"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 301
    new-instance v0, Lcom/apprupt/sdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$3;-><init>(Lcom/apprupt/sdk/AdView;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 309
    return-void
.end method

.method public setAdSpaceId(I)V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/apprupt/sdk/AdView;->g:Ljava/lang/String;

    .line 252
    monitor-exit p0

    .line 253
    return-void

    .line 251
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAnimationType(Lcom/apprupt/sdk/CvAnimationType;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->k:Lcom/apprupt/sdk/CvAnimationType;

    .line 369
    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->h:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setCleanOnDisappear(Z)V
    .locals 0

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/apprupt/sdk/AdView;->q:Z

    .line 239
    return-void
.end method

.method setHwaStatus(Lcom/apprupt/sdk/AdView$HwaStatus;)V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->f:Lcom/apprupt/sdk/AdView$HwaStatus;

    .line 413
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/apprupt/sdk/AdView;->i:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setListener(Lcom/apprupt/sdk/AdView$Listener;)V
    .locals 2

    .prologue
    .line 436
    new-instance v0, Lcom/apprupt/sdk/AdView$5;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/AdView$5;-><init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/AdView$Listener;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 442
    return-void
.end method

.method public setLoadImmediately(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/apprupt/sdk/AdView;->p:Z

    .line 243
    return-void
.end method

.method public setPlaceholderSize(I)V
    .locals 0

    .prologue
    .line 233
    if-gtz p1, :cond_0

    const/16 p1, 0x32

    .line 234
    :cond_0
    iput p1, p0, Lcom/apprupt/sdk/AdView;->e:I

    .line 235
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 372
    if-lez p1, :cond_1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/apprupt/sdk/AdView;->j:I

    .line 373
    return-void

    .line 372
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setVisibilityTrackingEnabled(Z)V
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/apprupt/sdk/AdView;->r:Z

    .line 247
    return-void
.end method

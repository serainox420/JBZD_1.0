.class public Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source "InlineLightboxAdapter.java"


# instance fields
.field private c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field private d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private e:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    return-object v0
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;II)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attach(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 2

    .prologue
    .line 81
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .line 82
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .line 83
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

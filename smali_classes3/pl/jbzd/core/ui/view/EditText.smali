.class public Lpl/jbzd/core/ui/view/EditText;
.super Landroid/widget/EditText;
.source "EditText.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/view/EditText$Font;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpl/jbzd/core/ui/view/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/core/ui/view/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/view/EditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 75
    .line 77
    if-eqz p2, :cond_0

    .line 79
    sget-object v0, Lpl/jbzd/R$styleable;->MyTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 85
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    :cond_0
    invoke-static {v0}, Lpl/jbzd/core/ui/view/EditText$Font;->getById(I)Lpl/jbzd/core/ui/view/EditText$Font;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/EditText;->setFont(Lpl/jbzd/core/ui/view/EditText$Font;)V

    .line 91
    return-void

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public setFont(Lpl/jbzd/core/ui/view/EditText$Font;)V
    .locals 4

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lpl/jbzd/core/a/g;->a()Lpl/jbzd/core/a/g;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lpl/jbzd/core/ui/view/EditText$Font;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/core/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/EditText;->requestLayout()V

    .line 104
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/EditText;->invalidate()V

    .line 107
    :cond_0
    return-void
.end method

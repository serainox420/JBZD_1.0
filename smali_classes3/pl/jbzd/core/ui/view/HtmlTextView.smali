.class public Lpl/jbzd/core/ui/view/HtmlTextView;
.super Lpl/jbzd/core/ui/view/TextView;
.source "HtmlTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/view/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/core/ui/view/HtmlTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/HtmlTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/HtmlTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public setHtml(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void

    .line 37
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

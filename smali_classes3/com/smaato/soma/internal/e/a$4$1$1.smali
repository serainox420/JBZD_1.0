.class Lcom/smaato/soma/internal/e/a$4$1$1;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/e/a$4$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$4$1;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    .line 283
    :goto_0
    const-string v0, "Reason"

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 285
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v2, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 288
    const-string v1, "Contains provocative or suggestive imagery"

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 291
    const-string v1, "Is misleading (e.g. simulates a dialog or app component)"

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 293
    new-instance v4, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 294
    const-string v1, "Is shaky, flashing or flickering"

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v5, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 297
    const-string v1, "Contains inappropriate content"

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v6, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 300
    const-string v1, "Automatically triggers unwanted behavior (redirects/downloads)"

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v7, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 303
    const-string v1, "Automatically plays audio or video"

    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 307
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 309
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 310
    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 312
    const-string v9, "Ok"

    new-instance v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/smaato/soma/internal/e/a$4$1$1$1;-><init>(Lcom/smaato/soma/internal/e/a$4$1$1;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    const-string v0, "Cancel"

    new-instance v1, Lcom/smaato/soma/internal/e/a$4$1$1$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/e/a$4$1$1$2;-><init>(Lcom/smaato/soma/internal/e/a$4$1$1;)V

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$4$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

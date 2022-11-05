.class Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;
.super Ljava/lang/Object;
.source "AddKwejkDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:C


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->b:Z

    .line 185
    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->c:I

    .line 186
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    .line 187
    const/16 v0, 0x23

    iput-char v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x2c

    const/16 v5, 0x23

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 215
    iget-boolean v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 220
    iget-boolean v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->b:Z

    if-nez v4, :cond_0

    .line 222
    if-lt v3, v0, :cond_0

    .line 225
    iget-char v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    iget-char v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    iget-char v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v4, v5, :cond_4

    iget-char v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v4, v6, :cond_4

    iget-char v4, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v4, v7, :cond_4

    .line 227
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    .line 228
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 229
    :goto_1
    iget-object v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-static {v3, v2}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/EditText;->append(Ljava/lang/CharSequence;)V

    .line 231
    :cond_2
    iput-boolean v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 228
    goto :goto_1

    .line 235
    :cond_4
    if-le v3, v0, :cond_6

    .line 237
    iget-char v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5

    iget-char v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v3, v5, :cond_5

    iget-char v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v3, v6, :cond_5

    iget-char v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-ne v3, v7, :cond_0

    .line 239
    :cond_5
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    .line 240
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-static {v0, v2}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->b(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/EditText;->append(Ljava/lang/CharSequence;)V

    .line 242
    iput-boolean v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    goto :goto_0

    .line 245
    :cond_6
    iget-char v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_7

    iget-char v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v2, v5, :cond_7

    iget-char v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v2, v6, :cond_7

    iget-char v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    if-eq v2, v7, :cond_7

    .line 247
    iget-char v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    .line 250
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/EditText;->setSelection(I)V

    .line 252
    iput-boolean v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    goto/16 :goto_0

    .line 257
    :cond_7
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    .line 258
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v2, v2, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    iget-object v2, v2, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/EditText;->setSelection(I)V

    .line 260
    iput-boolean v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iput p3, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->c:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-boolean v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->d:Z

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 203
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->e:C

    .line 204
    iget v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->c:I

    if-le v1, p4, :cond_1

    :goto_1
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 207
    :cond_2
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$5;->b:Z

    goto :goto_0
.end method

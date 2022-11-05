.class public final Landroid/support/customtabs/c$a;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Bundle;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/customtabs/c$a;-><init>(Landroid/support/customtabs/e;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/support/customtabs/e;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    .line 275
    iput-object v0, p0, Landroid/support/customtabs/c$a;->b:Ljava/util/ArrayList;

    .line 276
    iput-object v0, p0, Landroid/support/customtabs/c$a;->c:Landroid/os/Bundle;

    .line 277
    iput-object v0, p0, Landroid/support/customtabs/c$a;->d:Ljava/util/ArrayList;

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/customtabs/c$a;->e:Z

    .line 298
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/customtabs/e;->b()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 300
    const-string v2, "android.support.customtabs.extra.SESSION"

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/support/v4/app/n;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 302
    iget-object v0, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 303
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/support/customtabs/e;->a()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/customtabs/c;
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/customtabs/c$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Landroid/support/customtabs/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/support/customtabs/c$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    iget-object v2, p0, Landroid/support/customtabs/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    iget-boolean v2, p0, Landroid/support/customtabs/c$a;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    new-instance v0, Landroid/support/customtabs/c;

    iget-object v1, p0, Landroid/support/customtabs/c$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/customtabs/c$a;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/customtabs/c;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/customtabs/c$1;)V

    return-object v0
.end method

.class Lcom/smartadserver/android/library/ui/a$d$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$d;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$d;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$d$1;->a:Lcom/smartadserver/android/library/ui/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$d$1;->a:Lcom/smartadserver/android/library/ui/a$d;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$d;->g:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;Z)V

    .line 242
    return-void
.end method

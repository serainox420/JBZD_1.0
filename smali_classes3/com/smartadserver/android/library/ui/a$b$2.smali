.class Lcom/smartadserver/android/library/ui/a$b$2;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$b;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$b$2;->a:Lcom/smartadserver/android/library/ui/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b$2;->a:Lcom/smartadserver/android/library/ui/a$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;Z)V

    .line 322
    return-void
.end method

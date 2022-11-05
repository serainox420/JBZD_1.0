.class Lcom/adcolony/sdk/ADCVMModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ADCVMModule;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ADCVMModule;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ADCVMModule;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adcolony/sdk/ADCVMModule$1;->a:Lcom/adcolony/sdk/ADCVMModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule$1;->a:Lcom/adcolony/sdk/ADCVMModule;

    invoke-static {v0}, Lcom/adcolony/sdk/ADCVMModule;->a(Lcom/adcolony/sdk/ADCVMModule;)Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;->a()V

    .line 227
    :cond_0
    return-void
.end method

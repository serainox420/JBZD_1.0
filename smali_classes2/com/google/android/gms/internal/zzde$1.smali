.class Lcom/google/android/gms/internal/zzde$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzde;->zzh(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzxY:Landroid/view/View;

.field final synthetic zzxZ:Lcom/google/android/gms/internal/zzde;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzde;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzde$1;->zzxZ:Lcom/google/android/gms/internal/zzde;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzde$1;->zzxY:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzde$1;->zzxZ:Lcom/google/android/gms/internal/zzde;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzde$1;->zzxY:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzde;->zzi(Landroid/view/View;)V

    return-void
.end method

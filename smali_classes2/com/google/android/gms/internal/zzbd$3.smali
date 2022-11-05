.class Lcom/google/android/gms/internal/zzbd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbd;->zzaX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzqH:Lcom/google/android/gms/internal/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd$3;->zzqH:Lcom/google/android/gms/internal/zzbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd$3;->zzqH:Lcom/google/android/gms/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    return-void
.end method

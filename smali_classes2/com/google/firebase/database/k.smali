.class public Lcom/google/firebase/database/k;
.super Ljava/lang/Object;


# static fields
.field static final synthetic d:Z


# instance fields
.field protected final a:Lcom/google/android/gms/internal/zzbpj;

.field protected final b:Lcom/google/android/gms/internal/zzbph;

.field protected final c:Lcom/google/android/gms/internal/zzbrb;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/database/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/k;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/zzbph;

    sget-object v0, Lcom/google/android/gms/internal/zzbrb;->zzcie:Lcom/google/android/gms/internal/zzbrb;

    iput-object v0, p0, Lcom/google/firebase/database/k;->c:Lcom/google/android/gms/internal/zzbrb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/k;->e:Z

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/gms/internal/zzbph;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/zzbph;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/zzbrc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbrc;

    iget-object v1, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/zzbph;

    iget-object v2, p0, Lcom/google/firebase/database/k;->c:Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrc;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;)V

    return-object v0
.end method

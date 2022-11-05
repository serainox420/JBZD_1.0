.class public Lcom/google/firebase/database/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzbrx;

.field private final b:Lcom/google/firebase/database/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/zzbrx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/b;->a:Lcom/google/android/gms/internal/zzbrx;

    iput-object p1, p0, Lcom/google/firebase/database/b;->b:Lcom/google/firebase/database/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/database/d;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/b;->b:Lcom/google/firebase/database/d;

    return-object v0
.end method

.method public a(Z)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/b;->a:Lcom/google/android/gms/internal/zzbrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/b;->b:Lcom/google/firebase/database/d;

    invoke-virtual {v0}, Lcom/google/firebase/database/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/b;->b:Lcom/google/firebase/database/d;

    invoke-virtual {v0}, Lcom/google/firebase/database/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/b;->a:Lcom/google/android/gms/internal/zzbrx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DataSnapshot { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

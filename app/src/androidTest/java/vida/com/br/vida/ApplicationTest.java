package vida.com.br.vida;

import android.app.Application;
import android.test.ApplicationTestCase;

import java.util.Collections;
import java.util.TreeSet;

import vida.com.br.vida.model.Atendimento;
import vida.com.br.vida.model.Iteracao;
import vida.com.br.vida.model.Medicamento;
import vida.com.br.vida.model.Medico;
import vida.com.br.vida.model.Posologia;
import vida.com.br.vida.model.Receituario;
import vida.com.br.vida.model.Tratamento;
import vida.com.br.vida.model.Usuario;

/**
 * <a href="http://d.android.com/tools/testing/testing_android.html">Testing Fundamentals</a>
 */
public class ApplicationTest extends ApplicationTestCase<Application> {
    public ApplicationTest() {
        super(Application.class);
    }
        /**
         * Um usuário foi atendido por um medico
         * e diagnosticou-se bronquite asmática
         * na receita expedida pelo médico
         * para o tratamento consta as seguintes posologias:
         */
        public void testBronquiteAsmatica(){
            Usuario usuario = new Usuario();
            usuario.setNome("joao doente");

            Atendimento atendimento = new Atendimento();
            atendimento.setNomeLocal("hospital curare");
            atendimento.setUsuario(usuario);

            Medico medico = new Medico();
            medico.setNome("Dr. house");

            atendimento.setMedicos(Collections.singleton(medico));

            Receituario receituario = new Receituario();
            medico.setReceituarios(Collections.singleton(receituario));

            Tratamento tratamento = new Tratamento();
            tratamento.setNome("Bronquite asmática");

            receituario.setTratamentos(Collections.singleton(tratamento));
            //posologia 1
            Posologia posologia1 = new Posologia();
            posologia1.setNome("Expectorante");
            tratamento.setPosologias(Collections.singleton(posologia1));

            Medicamento medicamento1 = new Medicamento();
            medicamento1.setNome("Predimisolona");

            posologia1.setMedicamentos(Collections.singleton(medicamento1));

            //posologia 2
            Posologia posologia2 = new Posologia();
            posologia2.setNome("Estimulo de Bronquio Dilatação");
            tratamento.setPosologias(Collections.singleton(posologia2));

            Medicamento medicamento2 = new Medicamento();
            medicamento2.setNome("Berotec");

            posologia2.setMedicamentos(Collections.singleton(medicamento2));

            Medicamento medicamento3 = new Medicamento();
            medicamento3.setNome("Astrovent");

            posologia2.setMedicamentos(Collections.singleton(medicamento3));

            Medicamento medicamento4 = new Medicamento();
            medicamento4.setNome("Soro fisiologico");

            posologia2.setMedicamentos(Collections.singleton(medicamento4));

            //iteração medicamentosa 1
            Iteracao iteracao1 = new Iteracao();
            posologia2.setIteracoes(new TreeSet<Iteracao>());

            iteracao1.setOrder(1);
            iteracao1.setIntervaloHoras(4);
            iteracao1.setDias(2);
            iteracao1.setMedicamentos(new TreeSet<Medicamento>());
            iteracao1.getMedicamentos().add(medicamento2);
            iteracao1.getMedicamentos().add(medicamento3);
            iteracao1.getMedicamentos().add(medicamento4);

            posologia2.getIteracoes().add(iteracao1);

            //iteração medicamentosa 2
            Iteracao iteracao2 = new Iteracao();
            iteracao2.setOrder(2);
            iteracao2.setIntervaloHoras(8);
            iteracao2.setDias(3);
            iteracao2.setMedicamentos(new TreeSet<Medicamento>());
            iteracao2.getMedicamentos().add(medicamento2);
            iteracao2.getMedicamentos().add(medicamento4);

            posologia2.getIteracoes().add(iteracao2);


    }
}
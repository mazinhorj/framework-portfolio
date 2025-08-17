package com.signos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
public class SignosController {
    
    @GetMapping("/")
    public String home() {
        return "index";
    }
    
    @GetMapping("/signos")
    public String mostrarFormulario() {
        return "signos";
    }
    
    @PostMapping("/resultado")
    public String calcularSigno(@RequestParam("dataNascimento") String dataNascimento, Model model) {
        try {
            LocalDate data = LocalDate.parse(dataNascimento);
            String signo = determinarSigno(data);
            String descricao = obterDescricaoSigno(signo);
            
            model.addAttribute("signo", signo);
            model.addAttribute("descricao", descricao);
            model.addAttribute("dataNascimento", data.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            
            return "resultado";
        } catch (Exception e) {
            model.addAttribute("erro", "Data inválida. Por favor, insira uma data válida.");
            return "signos";
        }
    }
    
    private String determinarSigno(LocalDate data) {
        int dia = data.getDayOfMonth();
        int mes = data.getMonthValue();
        
        switch (mes) {
            case 1: // Janeiro
                return (dia <= 19) ? "Capricórnio" : "Aquário";
            case 2: // Fevereiro
                return (dia <= 18) ? "Aquário" : "Peixes";
            case 3: // Março
                return (dia <= 20) ? "Peixes" : "Áries";
            case 4: // Abril
                return (dia <= 19) ? "Áries" : "Touro";
            case 5: // Maio
                return (dia <= 20) ? "Touro" : "Gêmeos";
            case 6: // Junho
                return (dia <= 20) ? "Gêmeos" : "Câncer";
            case 7: // Julho
                return (dia <= 22) ? "Câncer" : "Leão";
            case 8: // Agosto
                return (dia <= 22) ? "Leão" : "Virgem";
            case 9: // Setembro
                return (dia <= 22) ? "Virgem" : "Libra";
            case 10: // Outubro
                return (dia <= 22) ? "Libra" : "Escorpião";
            case 11: // Novembro
                return (dia <= 21) ? "Escorpião" : "Sagitário";
            case 12: // Dezembro
                return (dia <= 21) ? "Sagitário" : "Capricórnio";
            default:
                return "Signo não encontrado";
        }
    }
    
    private String obterDescricaoSigno(String signo) {
        switch (signo) {
            case "Áries":
                return "Pessoas de Áries são conhecidas por serem corajosas, determinadas e cheias de energia. São líderes naturais e gostam de novos desafios.";
            case "Touro":
                return "Taurinos são práticos, confiáveis e persistentes. Valorizam a estabilidade e têm grande apreço pela beleza e conforto.";
            case "Gêmeos":
                return "Geminianos são comunicativos, versáteis e curiosos. Adoram aprender coisas novas e são excelentes em se adaptar a diferentes situações.";
            case "Câncer":
                return "Cancerianos são emotivos, intuitivos e protetores. Valorizam muito a família e o lar, sendo muito leais aos que amam.";
            case "Leão":
                return "Leoninos são generosos, criativos e confiantes. Gostam de ser o centro das atenções e têm um grande coração.";
            case "Virgem":
                return "Virginianos são organizados, práticos e detalhistas. São perfeccionistas e sempre buscam ajudar os outros.";
            case "Libra":
                return "Librianos são diplomáticos, charmosos e buscam sempre o equilíbrio. Valorizam a justiça e a harmonia nos relacionamentos.";
            case "Escorpião":
                return "Escorpianos são intensos, misteriosos e determinados. Possuem grande força de vontade e são muito leais.";
            case "Sagitário":
                return "Sagitarianos são aventureiros, otimistas e filosóficos. Adoram viajar e explorar novas culturas e ideias.";
            case "Capricórnio":
                return "Capricornianos são ambiciosos, disciplinados e responsáveis. São trabalhadores incansáveis e valorizam o sucesso.";
            case "Aquário":
                return "Aquarianos são independentes, inovadores e humanitários. Gostam de pensar fora da caixa e ajudar a sociedade.";
            case "Peixes":
                return "Piscianos são sensíveis, criativos e compassivos. Possuem grande intuição e são muito empáticos.";
            default:
                return "Descrição não disponível.";
        }
    }
}

